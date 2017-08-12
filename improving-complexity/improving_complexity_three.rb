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

def organize(unsorted)
  mid = unsorted.length / 2
  left = mergesort unsorted.slice(0, mid)
  right = mergesort unsorted.slice(mid, unsorted.length - mid)

  unsorted = []

  while 0 < left.length && 0 < right.length
    left_element = left[0]
    right_element = right[0]

    left_element <= right_element ? 
      unsorted.push(left.delete(left_element)) : unsorted.push(right.delete(right_element))
  end

  while 0 < left.length
    unsorted.push(left.delete(left_element))
  end

  while 0 < right.length
    unsorted.push(right.delete(right_element))
  end

  return unsorted
end
