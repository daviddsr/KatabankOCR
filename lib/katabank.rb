
module ParserApp

OFFSET_NUMBERS = [0,3,6,9,12,15,18,21,24]

INITIAL_MAPPING_POSITIONS = [0,1,2,28,29,30,56,57,58]


ZERO = <<-EOF
 _ 
| |
|_|
EOF

ONE = <<-EOF
   
  |
  |
EOF

TWO = <<-EOF
 _ 
 _|
|_ 
EOF

THREE = <<-EOF
 _ 
 _|
 _|
EOF

NUMBERS = [ZERO, ONE, TWO, THREE]

  def parse(input)
    result = ""
    array_input = convert_to_array(input)
    OFFSET_NUMBERS.each do |offset|
      NUMBERS.each_with_index do |number, index|
        result << index.to_s if number.split(/\n/).join == array_input.values_at(*positions_for(offset)).join
      end
    end
    puts result
    result
  end

  def convert_to_array(input)
    input.split('')
  end


  def positions_for(offset)  
    mapped_position = [] 
    INITIAL_MAPPING_POSITIONS.each do |index|
      mapped_position << index + offset
    end
    mapped_position
  end




  # def parse(input)
  #   '000000000'
  #   number_account = []
  #   NUMBERS.each do |number, index|
  #     number_account << index if first_number(input).join == number
  #   end
  #   number_account
  # end

  # def first_number(input)
  #   array_input = input.split('')
  #   first_number = array_input.values_at values_for(1)
  #   first_number
  # end

  # def second_number(input)
  #   array_input = input.split('')
  #   first_number = array_input.values_at values_for(3)
  #   first_number
  # end

  # def third_number(input)
  #   array_input = input.split('')
  #   first_number = array_input.values_at values_for(6)
  #   first_number
  # end

  # def values_for(position)
  #   [0,1,2,27,28,29,54,55,56].each do |index|
  #     index + position
  #   end
  # end

  # def get_first_number(input) 
  #   number = 0
  #   NUMBERS.each do |number, index|
  #     number = index if number = first_position(input)
  #   end
  #   number
  # end

end
