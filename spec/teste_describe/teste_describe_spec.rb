RSpec.describe 'describe' do
  it 'String' do
    str = 'paulo'
    expect(str.size).to eq(5)
  end
end

RSpec.describe [1, 2, 3] do
  it 'Array' do
    expect(subject).to be_kind_of(Array)
  end
end