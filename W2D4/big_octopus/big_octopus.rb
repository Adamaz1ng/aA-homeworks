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
