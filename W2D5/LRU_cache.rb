class LRUCache
  def initialize(size)
    @size = size
    @store = []
  end

  def count
    # returns number of elements currently in cache
    @store.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    # @store.pop if count == @size
    # @store.unshift(el)

    if @store.include?(el)
      @store.delete(el)
    else
      @store.shift if count == @size
    end

    @store << el
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @store
    nil
  end

  private
  # helper methods go here!
end
