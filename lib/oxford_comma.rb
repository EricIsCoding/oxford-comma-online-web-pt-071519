require "pry"

def oxford_comma(array)
  counter = 0
  oxford_string = ""
  array.each_with_index do |word, index|
    if index == 0 
      oxford_string << "#{word}"
    elsif array.length == 2
      oxford_string = array.join(" and ")
    elsif index == array.length - 1
      oxford_string << ", and #{word}"
    else
      oxford_string << ", #{word}"
    end
  end
  oxford_string
end