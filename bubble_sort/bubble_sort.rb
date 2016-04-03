def bubble_sort(numbers)
  swapped = true
  while swapped
    swapped = false
    (0...numbers.size-1).each do |i|
      if(numbers[i] > numbers[i+1])
        temp = numbers[i+1]
        numbers[i+1] = numbers[i]
        numbers[i] = temp
        swapped = true
      end
    end
  end
  puts numbers
end

bubble_sort([5,3,6,1,2])
