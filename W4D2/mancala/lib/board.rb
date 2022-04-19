class Board
  attr_accessor :cups
  attr_reader :name1, :name2

  def initialize(name1, name2)
    @cups = Array.new(14) {Array.new}
    place_stones
    @name1 = name1
    @name2 = name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index {|cup, i| cup.push(:stone, :stone, :stone, :stone) unless i == 6 || i == 13}
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos.between?(0,5) || start_pos.between?(7,12)
    raise "Starting cup is empty" if cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    cup_dup = cups[start_pos].dup
    cups[start_pos].clear
    while cup_dup.length > 0
      start_pos = (start_pos+1)%14
      if (start_pos == 6 && current_player_name != name1) || (start_pos == 13 && current_player_name != name2)
        start_pos = (start_pos+1)%14
      end
      cups[start_pos].push(cup_dup.shift)
    end
    render
    next_turn(start_pos)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    case
    when ending_cup_idx == 13 || ending_cup_idx == 6 
      :prompt
    when cups[ending_cup_idx].length == 1
      :switch
    when cups[ending_cup_idx].length > 1
      ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    cups[0..5].all?(&:empty?) || cups[7..12].all?(&:empty?)
  end

  def winner
    if cups[6].length > cups[13].length
      return name1
    elsif cups[6].length < cups[13].length
      return name2
    else
      return :draw
    end
  end
end
