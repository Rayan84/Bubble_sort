#bubble sort

def bubble_sort(arr)

  return arr if arr.length <= 1

  loop do
  changed = false
  (arr.length-1).times do |i|

  if arr[i] > arr[i+1]
    arr[i], arr[i+1] = arr[i+1], arr[i]
    changed = true
  end
end
  break if changed == false
end
   arr
end

array = [4, 5, 2, 20, 12, 8, 3, 52, 18, 1]
bubble_sort(array)


def bubble_sort_by(array)
  sorted_array = array
  array.map.with_index do |_val, indx|
    i = 0
    if indx < array.length
      while i < array.length - 1
        if yield(array[i], array[i + 1]).positive?
          next_value = array[i + 1]
          array[i + 1] = array[i]
          array[i] = next_value
          sorted_array = array
        end
        i += 1
      end
    end
  end
  sorted_array
end

     bubble_sort_by(["hi","hello","hey"]) do |left,right|
     left.length - right.length
   end
