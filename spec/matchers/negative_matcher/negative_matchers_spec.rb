RSpec::Matchers.define_negated_matcher :an_array_excluding, :include
RSpec::Matchers.define_negated_matcher :be_not_within, :be_within


describe Array.new([1, 2, 3]) do
  it { expect(subject).to an_array_excluding(4)}
end

describe 'be_within' do
  it { expect(11.4).to be_not_within(0.5).of(12) }
end
