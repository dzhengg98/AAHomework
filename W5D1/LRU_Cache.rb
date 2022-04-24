class LRUCache

  attr_reader :max_size

  def initialize(max_size)
    @array = []
    @max_size = max_size
  end

  def count
    array.size
  end

  def add(el)
    if include?(el)
      array.delete(el)
    elsif full?
      array.shift
    end
    array.push(el)
  end

  def show
    puts "prints #{array}"
  end

  private
  attr_reader :array

  def include?(el)
    array.include?(el)
  end

  def full?
    max_size == count
  end

end

johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})


johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]