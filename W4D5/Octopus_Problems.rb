#----------Big O-ctopus and Biggest Fish----------
# Sluggish Octopus  O(n^2)
def sluggish_octopus(arr)
  longest = ""
  arr.each {|ele| arr.each {|ele2| ele > ele2 ? longest = ele : longest = ele2}}
  longest
end
p sluggish_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

# Dominant Octopus  O(n log n)
def dominant_octopus(arr)
  return arr.first if arr.length == 1
  pivot = arr.first
  right = arr.select {|ele| ele.length > pivot.length}
  dominant_octopus(right)
end
p dominant_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

# Clever Octopus  O(n)
def clever_octopus(arr)
  arr.inject("") do |longest, ele|
    longest.length < ele.length ? longest = ele : longest
  end
end
p clever_octopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
#----------Dancing Octopus----------
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
# Slow Dance O(n)
def slow_dance(str, arr)
  arr.each_with_index {|ele, i| return i if str == ele}
end
p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)
# Constant Dance! O(1)
def fast_dance(str, arr)
  hash = Hash[arr.map.with_index.to_a]
  hash[str]
end
p fast_dance("up", tiles_array)
p fast_dance("right-down", tiles_array)