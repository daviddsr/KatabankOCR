require './lib/katabank'

include ParserApp

describe "Katabank" do
  it "returns 0 from an account number of 0" do
     entry = <<-EOF
 _                         
| |                        
|_|                        
                           
EOF

    result = parse(entry)

    expect(result).to eq("0")
  end
  it "returns 1 from an account number of 1" do
    entry = <<-EOF
                           
  |                        
  |                        
                           
EOF

    result = parse(entry)

    expect(result).to eq("1")
  end
  it "returns 2 from an account number of 2" do
    entry = <<-EOF
 _                         
 _|                        
|_                         
                           
EOF

    result = parse(entry)

    expect(result).to eq("2")
  end
  it "returns 00 from an account number of 00" do
    entry = <<-EOF
 _  _                      
| || |                     
|_||_|                     
                           
EOF

    result = parse(entry)

    expect(result).to eq("00")
  end
  it "returns 123 from an account number of 123" do
    entry = <<-EOF
    _  _                   
  | _| _|                  
  ||_  _|                  
                           
EOF

    result = parse(entry)

    expect(result).to eq("123")
  end
  it "returns 012301230 from an account number of 012301230" do
    entry = <<-EOF
 _     _  _  _     _  _  _ 
| |  | _| _|| |  | _| _|| |
|_|  ||_  _||_|  ||_  _||_|
                           
EOF

  result = parse(entry)

  expect(result).to eq("012301230")
  end
end


