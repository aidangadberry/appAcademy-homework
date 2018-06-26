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
    stones = cups[start_pos].length
    cups[start_pos] = []
    curr_pos = start_pos

    until stones.zero?
      curr_pos += 1

      # skip over other player's store
      if curr_pos == 6 || curr_pos == 13
        if current_player_name == @name1
          curr_pos = 0 if curr_pos == 13
        else
          curr_pos = 7 if curr_pos == 6
        end
      end

      cups[curr_pos % 14] << :stone
      stones -= 1
    end

    render
    next_turn(curr_pos % 14, current_player_name)
  end

  def next_turn(ending_cup_idx, current_player_name)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    return :prompt if ending_cup_idx == 6 && current_player_name == @name1
    return :prompt if ending_cup_idx == 13 && current_player_name == @name2

    return :switch if cups[ending_cup_idx].length == 1
    ending_cup_idx
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
