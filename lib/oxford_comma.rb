require "pry"

def oxford_comma(array)
  counter = 0
  oxford_string = ""
  array.eac_with_index do |word, index|
    if index == 0 
      oxford_string << "#{array[counter]}"
    elsif array.length == 2
      oxford_string = array.join(" and ")
    elsif counter == array.length - 1
      oxford_string << ", and #{array[counter]}"
    else
      oxford_string << ", #{array[counter]}"
    end
  end
  oxford_string
end