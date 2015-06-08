
module ParserApp

  ZERO = " _ | ||_|"
  ONE = "     |  |"
  NUMBERS = [ZERO, ONE]


#ZERO = <<-EOF
 #_                         
#| |                        
#|_|                        
                           
#EOF  

#ONE = <<-EOF
                           
 # |                        
  #|                        
                           
#EOF

  def parse(input)
    '000000000'
    number_account = []
    NUMBERS.each do |number, index|
      number_account << index if first_number(input).join == number
    end
    number_account
  end

  def first_number(input)
    array_input = input.split('')
    first_number = array_input.values_at values_for(1)
    first_number
  end

  def second_number(input)
    array_input = input.split('')
    first_number = array_input.values_at values_for(3)
    first_number
  end

  def third_number(input)
    array_input = input.split('')
    first_number = array_input.values_at values_for(6)
    first_number
  end

  def values_for(position)
    [0,1,2,27,28,29,54,55,56].each do |index|
      index + position
    end
  end

  def get_first_number(input) 
    number = 0
    NUMBERS.each do |number, index|
      number = index if number = first_position(input)
    end
    number
  end

end
