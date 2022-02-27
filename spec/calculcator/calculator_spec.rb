require 'calculator'

describe Calculator do
  context '#sum' do
    it 'with positive numbers' do
      calc = Calculator.new
      result = calc.sum(5,7)
      expect(result).to eq(12)
    end

    it 'with negatives numbers' do
      calc = Calculator.new
      result = calc.sum(-5,7)
      expect(result).to eq(2)  
    end
  end
end
