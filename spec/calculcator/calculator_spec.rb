require 'calculator'

describe 'Calculadora', 'Descreve o Teste' do
  subject(:calc) { Calculator.new() }

  context '#div' do
    it 'divide por zero' do
      expect{ subject.div(3, 0) }.to raise_error(ZeroDivisionError) # Precisa usar as chaves
      expect{ subject.div(3, 0) }.to raise_error('divided by 0')
      expect{ subject.div(3, 0) }.to raise_error(ZeroDivisionError, 'divided by 0')
      expect{ subject.div(3, 0) }.to raise_error(/divided/) # Match regex
    end
  end

  context '#sum' do
    it 'with positive numbers' do
      result = calc.sum(5, 7)
      expect(result).to eq(12)
      expect(result).not_to eq(11)
      expect(result).not_to eq(10)
    end

    it 'with negatives numbers' do
      result = calc.sum(-5, 7)
      expect(result).to eq(2)
    end
  end
end
