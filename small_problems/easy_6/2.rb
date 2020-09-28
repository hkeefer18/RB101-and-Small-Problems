def remove_vowels(array)
  array.map do |string|
    string.delete("aeiouAEIOU")
  end
end

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
remove_vowels(%w(green YELLOW black white))
remove_vowels(%w(ABC AEIOU XYZ))