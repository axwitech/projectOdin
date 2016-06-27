#### ALMOST WORKING (NOT WORKINGR),  DONT KNOW WHY :(

def merge(front, back)
  result = []
  while front.size > 0 and back.size > 0
    if front[0] <= back[0]
      result << front.first
      front.delete(front.first)
    else
      result << back.first
      back.delete(back.first)
    end
  end
  if front.size > 0
    result << front
  else
    result << back
    return result
  end
end

def merge_sort(array)
  front = []
  back = []
  result = []
  if (array.size <= 1)
    return array
  else
    front = array.each_slice( (array.size/2.0).round ).to_a[0]
    back = array.each_slice( (array.size/2.0).round ).to_a[1]
    front = merge_sort(front)
    back = merge_sort(back)
    if front.last <= back[0]
      result = merge(front,back)
    end
    result = merge(front, back)
    return result
  end
end


array = [22,15,222,192,4,1,55,18,8]
puts merge_sort(array)
