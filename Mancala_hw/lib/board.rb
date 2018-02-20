require 'byebug'
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) { Array.new }
    place_stones
    @name1, @name2 = name1, name2
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_index do |idx|
      4.times { cups[idx] << :stone if idx != 6 && idx != 13 }
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if !@cups.include?(start_pos)
  end

  def make_move(start_pos, current_player_name)
    # debugger
    temp_cup = cups[start_pos].dup
    i = start_pos
    cups[start_pos] = []
    if current_player_name == "Erica"
      i = 0
    else
      i = 7
    end

    until temp_cup.empty?
      cups[i] << temp_cup.shift unless i == 6 || i == 13
      i += 1
    end

    render
    next_turn(i)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine what #make_move returns
    return :switch if cups[ending_cup_idx].empty?
    if ending_cup_idx == 13
      :prompt
    elsif ending_cup_idx == 0
      :prompt
    else
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
    cups[(1..6)].all?(&:empty?) || cups[(7..12)].all?(&:empty?)
  end

  def winner
    return :draw if cups[6].length == cups[13].length
    return cups[6].length > cups[13].length ? @name1 : @name2
  end
end
