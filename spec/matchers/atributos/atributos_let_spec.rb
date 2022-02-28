require 'pessoa'

describe 'Atributos' do
  subject(:pessoa) { Pessoa.new() }

  let(:pessoa) { Pessoa.new }

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
