# Problems

## hash_select
When passing prc(s) into a hash and needs both the key and value, remember that the hash has both a key and value that needs to be called into the prc.
```ruby
def hash_select(hash, &prc)
  new_hash = Hash.new(0)
  hash.each {|k,v| new_hash[k] = v if prc.call(k, v)}
  new_hash
end

p hash_select({"a"=>0, "b"=>1, "c"=> 2, "o"=>14}) { |k, v| "aeiou".include?(k) }      #=> {"a"=>0, "o"=>14}
p hash_select({"a"=>0, "b"=>1, "c"=> 2, "o"=>14}) { |k, v| v.even? }                  #=> {"a"=>0, "c"=>2, "o"=>14}
```

## zip && zany zip
When trying to return a 2D array where each subarray contains the elements at the same index from each argument, remember to first find the maximum length of an inner array before iterating through the length and then the 2D array
```ruby
def zip(*arrays)
  length = arrays.first.length
  (0...length).map {|i| arrays.map {|array| array[i]}}
end

p zip(['a', 'b', 'c'], [1, 2, 3])                     #=> [["a", 1], ["b", 2], ["c", 3]]
p zip([1, 2, 3], ['a', 'b', 'c'])                     #=> [[1, "a"], [2, "b"], [3, "c"]]
p zip(['a', 'b', 'c'], [1, 2, 3], ['w', 'x', 'y'])    #=> [["a", 1, "w"], ["b", 2, "x"], ["c", 3, "y"]]

def zany_zip(*arrays)
  length = arrays.map {|array| array.length}.max
  (0...length).map {|i| arrays.map {|array| array[i]}}
end
p zany_zip([11, 13, 15, 17], ['a', 'b', 'c'], [1, 2, 3])                             #=> [[11, 1, "a"], [13, 2, "b"], [15, 3, "c"], [17, nil, nil]]
p zany_zip(['a', 'b', 'c'], [1, 2, 3], [11, 13, 15, 17], ['v', 'w', 'x', 'y', 'z'])  #=> [["a", 1, 11, "v"], ["b", 2, 13, "w"], ["c", 3, 15, "x"], [nil, nil, 17, "y"], [nil, nil, nil, "z"]]
```