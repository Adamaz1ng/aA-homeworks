class Stack
  attr_accessor :el_stack

  def initialize
    @el_stack = []
  end

  def add(el)
    @el_stack << el
  end

  def remove
    @el_stack.pop
  end

  def show
    @el_stack
  end
end

class Queue
  attr_accessor :el_queue

  def initialize
    @el_queue = []
  end

  def enqueue(el)
    @el_queue.shift(el)
  end

  def dequeue
    @el_queue.pop
  end

  def show
    @el_queue
  end
end

class Map
  attr_accessor :map_hash

  def initialize
    @map_hash = Hash.new { |h, k| h[k] = nil }
  end

  def assign(key, value)
    @map_hash[key] = value
  end

  def lookup(key)
    @map_hash[key]
  end

  def remove(key)
    @map.delete(key)
  end
end
