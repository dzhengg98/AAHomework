require "set"

class GraphNode
  attr_accessor :value, :neighboors
  def initialize(value)
    @value = value
    @neighboors = []
  end

  def bfs(starting_node, target_value)
    return starting_node.value if starting_node.value == target_value
    queue = [starting_node]
    visited = Set.new

    until queue.empty?
      check_node = queue.shift
      return check_node if check_node.value == target_value
      visited.add(check_node)
      check_node.neighboors.each do |neighboor|
        queue.push(neighboor) unless visited.include?(neighboor)
      end
    end
    nil
  end
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')

a.neighboors = [b, c, e]
c.neighboors = [b, d]
e.neighboors = [a]
f.neighboors = [e]

puts "searching for 'c' from a"
p a.bfs(a, "c")
# p bfs(a, "c")
puts "searching for 'a' from c"
p c.bfs(c, "a")
# p bfs(c, "a")