describe 'all' do
  it { expect([1, 7, 9]).to all (be_odd).and be_an(Integer) }
  it { expect(%w(ruby rails)).to all (include('r').and be_an(String)) }
end
