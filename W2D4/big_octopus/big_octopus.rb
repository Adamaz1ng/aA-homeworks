def nested_loops(arr)
  return_fish = nil
    arr.each_index do |i|
      arr.each_index do |j|
        if arr[j].length > arr[i].length  && arr[j].length > return_fish.length
          return_fish = arr[j]
        end
      end
    end
    return_fish
end

class Array
  def merge_sort(&prc)
    prc ||= Proc.new { |x, y| x <=> y }

    return self if count <= 1

    midpoint = count / 2
    sorted_left = self.take(midpoint).merge_sort(&prc)
    sorted_right = self.drop(midpoint).merge_sort(&prc)

    Array.merge(sorted_left, sorted_right, &prc)
  end

  private
  def self.merge(left, right, &prc)
    merged = []

    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when -1
        merged << left.shift
      when 0
        merged << left.shift
      when 1
        merged << right.shift
      end
    end

    merged.concat(left)
    merged.concat(right)

    merged
  end
end

def linear_search(arr)
  longest = arr.first
  arr.each do |el|
    if el.length > longest.length
      longest = el
    end
  end
  longest
end

def slow_dance(move, arr)
  arr.each_index { |el| return el if arr[idx] == el }
end

my_hash = Hash.new { |h, k| h[k] = nil }
["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ].each_with_index do |el, idx|
  my_hash[el] = idx
end

def fast_dance(key)
  my_hash.select[key]
end
