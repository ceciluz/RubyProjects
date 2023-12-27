def bubble_sort(array)
    array_length = array.size
    return array if array_length <= 1
  
    loop do 
      swapped = false
  
      (array_length - 1).times do |i|
        if array[i] > array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i]
          swapped = true
        end
      end
  
      break unless swapped
    end
  
    array
  end
  
  # Exemplo de uso:
  puts bubble_sort([4, 3, 78, 2, 0, 2])
  