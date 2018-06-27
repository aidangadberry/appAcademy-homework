def sluggish_octopus(fish)
  fish.each do |fish1|
    biggest = true
    fish.each do |fish2|
      biggest = false if fish1.length < fish2.length
    end

    return fish1 if biggest
  end
end

def dominant_octopus(fish)
  # ruby's sort uses quicksort, which takes O(nlogn) time
  sorted_fish = fish.sort { |a, b| a.length <=> b.length }
  sorted_fish[-1]
end

def clever_octopus(fish)
  biggest = fish[0]
  fish.drop(1).each do |curr_fish|
    biggest = curr_fish if curr_fish.length > biggest.length
  end

  biggest
end

def slow_dance(dir, tiles_array)
  tiles_array.each_with_index { |move, idx| return idx if dir == move }
end

tiles_hash = { "up" => 0, "right-up" => 1, "right"=> 2, "right-down" => 3,
               "down" => 4, "left-down" => 5, "left" => 6, "left-up" => 7 }

def constant_dance(dir, tiles_hash)
  tiles_hash[dir]
end

# p constant_dance("up", tiles_hash)
