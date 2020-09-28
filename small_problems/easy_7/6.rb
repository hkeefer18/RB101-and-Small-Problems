def staggered_case(string)
  new_string = ''
  need_upper = true
  string.chars.each do |char|
    # if char =~ /[a-z]/i
    if (('a'..'z').to_a + ('A'..'Z').to_a).include?(char)
      if need_upper
        new_string += char.upcase
      else
        new_string += char.downcase
      end
      need_upper =!need_upper
    else
      new_string += char
    end
  end
  new_string
end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'