$count = 0

describe 'let!' do
  invocation_order = []

  let!(:count) do # Let! is invoked before test
    invocation_order << :let! # Add :let in array
    $count += 1
  end

  it 'call helper method before test' do
    invocation_order << :example # Add :example in array
    expect(invocation_order).to eq([:let!, :example])
    expect(count).to eq(1)
  end
end
