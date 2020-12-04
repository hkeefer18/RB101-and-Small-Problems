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

merge([1, 5, 9], [2, 6, 8])