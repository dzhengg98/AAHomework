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
Returns a new array by removing duplicate values.

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
Changes the rows to columns and columns to rows.

```ruby
array = [[1,2], [3,4], [5,6]]
p array.transpose   #=> [[1, 3, 5], [2, 4, 6]]
```

## #chars
Changes a string in ruby to an array form.

```ruby
string = "hello"
p string.chars    #=> ["h","e","l","l","o"]
```

## #dup
Produces a shallow copy of obj(the instance variables of obj are copied, but not the objects they reference)

## #each_index
Iterates through the index of an array or string, returning it's index value.

```ruby
array = ["a","e","i","o","u"]
new_array = []
array.each_index do |i|
  new_array.push(i)
end
p new_array             #=> [0,1,2,3,4]
```

## #sort_by
Sorts an hash by the criteria(usually lowest to highest) being passed in, and returns an array of how it is sorted.

```ruby
hash = { "a" => 100, "b" => 200 }
p hash.sort_by {|k,v| v}                #=> [["a", 100], ["b", 200]]
```

## #rotate
Returns a new array by rotating so that the element at count is the first element of the new array.

```ruby
a = [18, 22, 33, nil, 5, 6]

a.rotate          #=> [22, 33, nil, 5, 6, 18]
a.rotate(4)       #=> [5, 6, 18, 22, 33, nil]
```

## #is_a?
Returns true if class is the class of obj, or if class is one of the superclasses of obj or modules included in obj.

```ruby
"hello".is_a?(String)         #=> true
[1,2,3].is_a?(Array)          #=> true
```