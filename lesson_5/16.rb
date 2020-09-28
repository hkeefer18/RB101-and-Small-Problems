def create_uuid
  hexa_arr = ('a'..'f').to_a + ('0'..'9').to_a
  string = ''
  8.times { string << hexa_arr.sample }
  3.times { 
    string << '-'
    4.times { string << hexa_arr.sample } 
  }
  string << '-'
  12.times { string << hexa_arr.sample }
  string
end

create_uuid

def create_uuid
  hexa_arr = ('a'..'f').to_a + ('0'..'9').to_a
  string = ''
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times { string += hexa_arr.sample }
    string += '-' unless index >= sections.size - 1
  end
  string
end

create_uuid