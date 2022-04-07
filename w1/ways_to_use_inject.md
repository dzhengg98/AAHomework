# Ways to Use #inject

## Using #inject to calculate sum of numbers
The #inject method can be used to calculate the sum of an array of numbers.

```ruby
def inject_sum(numbers)
  numbers.inject(20) {|acc, num| acc + num}
end

p inject_sum([10, 11, 12])        #=> 53 => 20 + 10 + 11 + 12
```

## Using #inject to find the largest or smallest number in a set of numbers
The #inject method can be used to find the largest number or smallest number in an array of numbers.

```ruby
def inject_max(numbers)
  numbers.inject(20) do |max, num|
    if max > num
      max
    else
      num
    end
  end
end

p inject_max([12, 25, 8, 10])    #=> 25

def inject_min(numbers)
  numbers.inject(20) do |min, num|
    if min < num
      min
    else
      num
    end
  end
end

p inject_min([12, 25, 8, 10])   #=> 8
```

## Using #inject to find mutual elements between arrays in a 2-D array
The #inject method can be used to find common elements between multiple arrays.

```ruby
def common_elements(array)
  array.inject {|common, array| common & array}
end

p common_elements([[1,2,3,4,5,6], [2,3,4,5], [3,4,5,10,16]])    #=> [3, 4, 5]
```

## Using #inject with a default string to create a sentence string from an array of words
The #inject method can be used to create a sentence string from an array of words by setting the default to a string.

```ruby
def create_sentence(string)
  string.inject("") do |string, word|
    string += word
    string
  end
end

p create_sentence(["Hello", ",", " ", "It's", " ", "Friday"])
#=> "Hello, It's Friday"
```

## Using #inject with a default hash to count elements in an array
The #inject method can be used to count elements in an array by setting the default to an hash.

```ruby
def count_votes(array)
  array.inject(Hash.new(0)) do |hash, votes|
    hash[votes] += 1
    hash
  end
end

p count_votes(["sam", "sam", "kyle", "ruben", "ruben", "robbie", "kyle", "kyle", "kyle", "robbie", "robbie", "robbie", "robbie", "robbie", "robbie", "sam", "robbie", "robbie", "kyle", "ruben", "robbie", "robbie", "sam"])
#=> {"sam"=>4, "kyle"=>5, "ruben"=>3, "robbie"=>11}
```

## Using #inject with a default hash to change the key and values of an hash
The #inject method can be used on hashes to change either the key or value of the hash. In the example below, we are switching the key and value's place.

```ruby
def reverse(hash)
  hash.inject({}) do |new_hash, (key, value)|
    new_hash[value] = key
    new_hash
  end
end

p reverse(a:1, b:2, c:3, d:4, e:5)

#=> {1=>:a, 2=>:b, 3=>:c, 4=>:d, 5=>:e}
```