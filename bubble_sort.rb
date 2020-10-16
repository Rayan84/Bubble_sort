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
