#bubble sort

def bubble_sort(arr)

  arr_length = arr.size
  return arr if arr_length <= 1

  loop do
  swapped = false
  (arr_length-1).times do |i|

  if arr[i] > arr[i+1]
    arr[i], arr[i+1] = arr[i+1], arr[i]
    swapped = true
  end
end
  break if swapped == false
end
   arr
end

array = [4, 5, 2, 20, 12, 8, 3, 52, 18, 1]
bubble_sort(array)
