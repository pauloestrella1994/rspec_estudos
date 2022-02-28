require 'pessoa'

describe 'Atributos' do
  subject(:pessoa) { Pessoa.new() }

  before(:each) do
    puts '>>>>>> Before each attribute test'
  end

  after(:each) do
    puts '>>>>>> After each attribute test'
  end

  around(:each) do |test|
    puts ">>>>>> Run before each test with around"
    test.run
    puts ">>>>>> Run after each test with around"
  end

  it 'have_attributes' do
    pessoa.nome = 'Paulo'
    pessoa.idade = 27
    expect(pessoa).to have_attributes(
      nome: a_string_starting_with('P'),
      idade: a_value >= 20
  )
  end

  it 'have_attributes' do
    pessoa.nome = 'Fabio'
    pessoa.idade = 27
    expect(pessoa).to have_attributes(
      nome: a_string_starting_with('F'),
      idade: a_value >= 20
  )
  end
end
