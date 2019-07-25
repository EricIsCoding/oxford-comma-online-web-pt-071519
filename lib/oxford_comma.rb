require "pry"

def oxford_comma(array)
  counter = 0
  oxford_string = ""
  while counter < array.length
    if counter == 0 
      oxford_string << "#{array[counter]}"
    elsif array.length == 2
      array.join(" and ")
    elsif counter == array.length - 1
      oxford_string << ", and #{array[counter]}"
    else
      oxford_string << ", #{array[counter]}"
    end
    counter += 1
  end
  oxford_string
end