require 'string_nao_vazia'

describe 'Classes' do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer) #Tem que ser a classe
  end

  it 'be_kind_of' do
    str = StringNaoVazia.new
    expect(str).to be_kind_of(String) #Pode ser por herança
    expect(str).to be_kind_of(StringNaoVazia)
    expect(10).to be_kind_of(Integer)
  end

  it 'respond_to' do
    expect("ruby").to respond_to(:size, :count) #"ruby" como string possui os métodos de size e count
  end

  it 'be_an / be_a' do
    str = StringNaoVazia.new
    expect(str).to be_an(String) #Pode ser por herança
    expect(str).to be_a(StringNaoVazia)
  end
end
