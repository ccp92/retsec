require 'pry'
class Retsec

  def self.convert(input)
    array = input.split('') # input string converted into an array
    chars = input.length # variable holding the length of the string
    newarray = []
    i = 0 # counter for while loops
    if chars.even? # here I am acting on the even numbered strings
      section_1_end = (chars / 2) - 1 # specifying the end point of the 1st half
      section_2_begin = section_1_end + 1 # and the beginning point of the second
      while section_2_begin < chars
        # this while loop is grabbing the second half of the string and adding
        # it to a new array
        newarray << array[section_2_begin]
        section_2_begin = section_2_begin + 1
      end
      while i <= section_1_end
        # this while loop is adding the first half of the string to the end of
        # the new array
        newarray << array[i]
        i = i + 1
      end
      newarray.join
    elsif input.length.odd? #here I am acting on the odd numbered strings
      midpoint = (chars - 1) / 2
      section_1_end = midpoint - 1
      section_2_begin = midpoint + 1
      while section_2_begin < chars
        # this while loop is grabbing the second half of the string and adding
        # it to a new array
        newarray << array[section_2_begin]
        section_2_begin = section_2_begin + 1
      end
      newarray << array[midpoint]
      # here, I am adding the midpoint back in the same place as this does not
      # move for odd numbered strings
      while i <= section_1_end
        # this while loop is adding the first half of the string to the end of
        # the new array
        newarray << array[i]
        i = i + 1
      end
      newarray.join
    else
      -1
    end
  end
end
