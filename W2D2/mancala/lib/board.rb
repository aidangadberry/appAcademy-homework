class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = place_stones
  end

  def place_stones
    my_cups = []

    14.times do |cup_num|
      if cup_num == 6 || cup_num == 13
        my_cups << []
        next
      end
      my_cups[cup_num] = [0, 0, 0, 0]
    end

    my_cups
  end

  def valid_move?(start_pos)
  end

  def make_move(start_pos, current_player_name)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
