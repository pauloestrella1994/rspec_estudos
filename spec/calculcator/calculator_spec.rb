require 'calculator'

describe 'Calculadora', "Descreve o Teste" do
  subject(:calc) { Calculator.new() }

  context '#sum' do
    it 'with positive numbers' do
      result = calc.sum(5,7)
      expect(result).to eq(12)
      expect(result).not_to eq(11)
      expect(result).not_to eq(10)
    end

    it 'with negatives numbers' do
      result = calc.sum(-5,7)
      expect(result).to eq(2)  
    end
  end
end
