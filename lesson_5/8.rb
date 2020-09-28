hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_, v|
  v.each do |string|
    string.chars.each do |char|
      puts char if ('aeiou').include? char
    end
  end
end