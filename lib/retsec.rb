require 'pry'
class Retsec

  def self.convert(input)
    array = input.split('')
    chars = input.length
    newarray = []
    i = 0

    if chars.even?
      section_1_end = (chars / 2) - 1
      section_2_begin = section_1_end + 1
    else
      midpoint = (chars - 1) / 2
      section_1_end = midpoint - 1
      section_2_begin = midpoint + 1
    end

    while section_2_begin < chars
      newarray << array[section_2_begin]
      section_2_begin = section_2_begin + 1
    end

    unless midpoint.nil?
      newarray << array[midpoint]
    end

    while i <= section_1_end
      newarray << array[i]
      i = i + 1
    end

    newarray.join
  end
end
