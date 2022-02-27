require 'calculator'

describe 'Calculadora' do
  subject(:calc) { Calculator.new() }

  context '#sum' do
    it 'with positive numbers' do
      result = calc.sum(5,7)
      expect(result).to eq(12)
    end

    it 'with negatives numbers' do
      result = calc.sum(-5,7)
      expect(result).to eq(2)  
    end
  end
end
