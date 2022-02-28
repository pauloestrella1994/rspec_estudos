describe 'Ruby on Rails' do
  it { is_expected.to start_with('Ruby').and end_with('Rails')}
  it { expect(fruta).to eq('banana').or eq('laranja').or eq('uva')}

  # Helper method
  # def fruta
  #   %w(banana laranja uva).sample # Retorna um dos elementos
  # end
end
