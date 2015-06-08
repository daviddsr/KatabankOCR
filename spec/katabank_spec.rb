require './lib/katabank'

include ParserApp

describe "Katabank" do
  it "parses an entry into an actual account number of 1 digit" do
    entry = <<-EOF
 _  _  _  _  _  _  _  _  _ 
| || || || || || || || || |
|_||_||_||_||_||_||_||_||_|
                           
EOF

    result = parse(entry)

    expect(result[0]).to eq("0")
    expect(result).to eq("000000000")
  end

  it "recognizes an array with number 1" do
    entry = <<-EOF
                           
  |                        
  |                        
                           
EOF

    result = parse(entry)

    expect(result).to eq("1")
  end

end


# entry = <<-EOF
#  _  _  _  _  _  _  _  _  _ 
# | || || || || || || || || |
# |_||_||_||_||_||_||_||_||_|
                           
# EOF

# ONE = <<-EOF
                           
#   |                        
#   |                        
                           
# EOF

# ZERO = <<-EOF
#  _                         
# | |                        
# |_|                        
                           
# EOF                                                                                                           

  
