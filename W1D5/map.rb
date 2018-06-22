class Map
  def initialize
    @map = []
  end

  def set(key, value)
    @map.each do |pair|
      if pair.first == key
        pair = [key, value]
        return value
      end
    end

    @map << [key, value]
    value
  end

  def get(key)
    value = nil

    @map.each { |pair| value = pair.last if pair.first == key }

    value
  end

  def delete(key)
    value = nil

    @map.each do |pair|
      if pair.last == key
        value = pair.last
        @map.delete(pair)
      end
    end

    value
  end

  def show
    
  end
end
