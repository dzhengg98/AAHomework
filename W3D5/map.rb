class Map
  attr_reader :map

  def initialize
    @map = []
  end

  def set(key, value)
    pair = map.find {|arr| arr[0] == key}
    if pair.nil?
      map.push([key, value])
    else
      index = map.index(pair)
      map[index] = [key, value]
    end
  end

  def get(key)
    map.each {|array| return array[1] if array[0].include?(key)}
    nil
  end

  def delete(key)
    map.select! {|array| !array[0].include?(key)}
  end

  def show
    map.each {|array| puts array.join(" ")}
  end
end