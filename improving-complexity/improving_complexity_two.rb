def poorly_written_ruby(*arrays)
  combined_array = []
  arrays.each do |array|
    combined_array += array
  end

  mergesort(combined_array)
end


def mergesort(unsorted)
  if unsorted.length <= 1
    return unsorted
  end

  organize(unsorted)

end

def organize unsorted 
  mid = unsorted.length / 2
  left = mergesort unsorted.slice(0, mid)
  right = mergesort unsorted.slice(mid, unsorted.length - mid)

  sorted = []
  offset_left = 0
  offset_right = 0

  while offset_left < left.length && offset_right < right.length
    left_element = left[offset_left]
    right_element = right[offset_right]

    if left_element <= right_element
      offset_left = push_lesser_element(sorted, left_element, offset_left)
    else
      offset_right = push_lesser_element(sorted, right_element, offset_right)
    end
  end

  while offset_left < left.length
    offset_left = push_lesser_element(sorted, left[offset_left], offset_left)
  end

  while offset_right < right.length
    offset_right = push_lesser_element(sorted, right[offset_right], offset_right)
  end

  return sorted
end

def push_lesser_element(sorted, element, offset)
  sorted.push(element)
  offset += 1
  return offset
end
