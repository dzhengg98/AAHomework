# Creating Unique 2-D Arrays & Hashes

## unique two dimensional array
```ruby
array = Array.new(3) {Array.new(3, "x")}
p array #=> [["x", "x", "x"], ["x", "x", "x"], ["x", "x", "x"]]
```

## unique array within a hash
```ruby
hash = Hash.new{|h,k| h[k] = []}
hash["numbers"].push(7)
hash["numbers"].push(21)
hash["letters"].push("a")
p hash     #=> {"numbers"=>[7, 21], "letters"=>["a"]}
```

## unique two dimensional hashes
```ruby
hash = Hash.new{|h,k| h[k] = Hash.new}
hash[:fruit][:apple] = 5
hash[:fruit][:oranges] = 6
hash[:fish][:salmon] = 4
p hash    #=> {:fruit=>{:apple=>5, :oranges=>6}, :fish=>{:salmon=>4}}
```