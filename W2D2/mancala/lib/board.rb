class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = place_stones
    @name1 = name1
    @name2 = name2
  end

  def place_stones
    my_cups = []

    14.times do |cup_num|
      if cup_num == 6 || cup_num == 13
        my_cups << []
        next
      end
      my_cups[cup_num] = [:stone, :stone, :stone, :stone]
    end

    my_cups
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" unless start_pos.between?(0, 12)
    raise "Starting cup is empty" if cups[start_pos].empty?
    true
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
    bottom_count = cups[0..5].inject(0) { |acc, cup| acc += cup.length }
    top_count = cups[7..12].inject(0) { |acc, cup| acc += cup.length }

    bottom_count == 0 || top_count == 0
  end

  def winner
    return @name1 if cups[6].length > cups[13].length
    return @name2 if cups[6].length < cups[13].length
    :draw
  end
end
