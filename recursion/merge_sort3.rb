### SOME ONE ELSES SOLUTION
def merge_sort(arr)
  left, right, result = []

  if arr.size <= 1
    return arr
  else
    middle = arr.size / 2
    left = arr[0..middle - 1]
    right = arr[middle..-1]
    left = merge_sort(left)
    right = merge_sort(right)
    if left.last <= right[0]
      left.concat right
      return left
    end
    result = merge(left, right)
    return result
  end
end

def merge(left, right)
  result = []
  while left.size > 0 and right.size > 0
    if left[0] <= right[0]
      result << left[0]
      left = left[1..-1]
    else
      result << right[0]
      right = right[1..-1]
    end
  end
  if left.size > 0
    result.concat left
  end
  if right.size > 0
    result.concat right
  end
  return result
end

arr = [3, 1, 5, 2]
puts arr
puts merge_sort(arr)
