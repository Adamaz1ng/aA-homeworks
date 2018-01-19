class Stack
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
