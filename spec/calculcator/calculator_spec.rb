require 'calculator'

describe Calculator do
  it 'sum method for two numbers' do
    calc = Calculator.new
    result = calc.sum(5,7)
    expect(result).to eq(12)
  end

  it 'sum method for numbers negatives' do
    calc = Calculator.new
    result = calc.sum(-5,7)
    expect(result).to eq(2)  
  end
end
