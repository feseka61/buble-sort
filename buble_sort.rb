def swap(array, index1, index2)
  temp = array[index1]
  array[index1] = array[index2]
  array[index2] = temp
  return array
end

def buble_sort(array)
  n = array.length
  sorted = false
  k = 0
  while !sorted
    k += 1
    swapped = false
    (0...(n-k)).each do |i|
      if array[i] > array[i+1]
        swap(array, i, i+1)
        swapped = true
      end
    end
    if !swapped
      sorted = true
    end
  end
  return array
end

p buble_sort([6,5,4,3,2,1,0])