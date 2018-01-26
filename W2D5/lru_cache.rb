class LRUCache
  attr_accessor :cache_arr
  attr_reader :max_size

  def initialize(array_size)
    @cache_arr = Array.new(array_size) { Array.new }
    @max_size = array_size
  end

  def count
    # returns number of elements currently in cache
    @cache_arr.reject { |el| el.empty? }.length
  end

  def add(el)
    # adds element to cache according to LRU principle
    if self.count == @max_size
      @cache_arr.shift
      @cache_arr << [el]
    else
      @cache_arr[self.count] << el
    end
    @cache_arr
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @cache_arr
  end

  private
  # helper methods go here!

end
