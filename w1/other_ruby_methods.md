# Other Ruby Methods

## #reject
The #reject method returns a new array containing the items in the array that was passed into the given block that resulted in false.
```ruby
def reject_puppies(array)
  array.reject {|hash| hash["age"] <= 2}
end

dogs = [{"name"=>"Fido", "age"=>3}, {"name"=>"Spot", "age"=>2}, {"name"=>"Rex", "age"=>5}, {"name"=>"Gizmo", "age"=>1}]

p reject_puppies(dogs)    #=> [{"name"=>"Fido", "age"=>3}, {"name"=>"Rex", "age"=>5}]
```

## #end_with?
The #end_with? is used to check if the string ends with one of the given strings or not.
```ruby
puts "Sample".end_with?("ple", "sam")     #=> true
puts "Program".end_with?("pro", "gr")     #=> false
```

## #downto
The #downto iterates the given block, passing in decreasing values from a given number down to and including the limit.
```ruby
def hipsterfy(word)
  vowels="aeiou"
  (word.length-1).downto(0) {|i| return word[0...i] + word[i+1..-1] if vowels.include?(word[i])}
  return word
end

p hipsterfy("apple")    #=> "appl"
p hipsterfy("mountain") #=> "mountan"
```

## #uniq
Returns a new array by removing duplicate values
```ruby
array = ["a", "a", "b", "b", "c"]
p array.uniq      #=> ["a", "b", "c"]
```

## #delete_if
Deletes every key-value pair from a hash for which block evaluates to true.
```ruby
hash = {"a"=>100, "b"=>200, "c"=>300}

p hash.delete_if {|key, value| value >= 200}    #=> {"a"=>100}
```

## #partition
Returns two arrays, the first containing the elements of enum for which the block evaluates to true, the second containing the rest.
```ruby
array = [1, 2, 3, 4, 5, 6]

p array.partition {|num| num.even?}     #=> [[2, 4, 6], [1, 3, 5]]
```

## #merge
Returns a new hash containing the contents of the first hash and second hash. If the hashes has duplicate keys, the second hash's value for the duplicate key will be shown.
```ruby
hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
p hash1.merge(hash2) #=> {"a"=>100, "b"=>254, "c"=>300}
```

## #transpose
Changes the rows to columns and columns to rows
```ruby
array = [[1,2], [3,4], [5,6]]
p array.transpose   #=> [[1, 3, 5], [2, 4, 6]]
```