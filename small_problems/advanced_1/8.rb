=begin

To break into nested sub-arrays, can use partition and each w index
  First, set center to array size / 2
  Partition condition i < center

=end

def merge_sort(array)
  return array if array.size == 1
  center = array.size
  first_half = array[0...center]
  second_half = array[center..-1]
  first_half = merge_sort(first_half)
  second_half = merge_sort(second_half)

  merge(first_half, second_half)
end

def merge(ary1, ary2)
  new_ary = []
  ary1_index = 0
  ary2_index = 0
  until ary1.size < ary1_index + 1 || ary2.size < ary2_index + 1
    if ary1[ary1_index] <= ary2[ary2_index]
      new_ary << ary1[ary1_index]
      ary1_index += 1
    else
      new_ary << ary2[ary2_index]
      ary2_index += 1
    end
  end
  ary1.size < ary1_index + 1 ? new_ary << ary2[ary2_index..-1] : new_ary << ary1[ary1_index..-1]
  new_ary.flatten
end

