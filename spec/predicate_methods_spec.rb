RSpec.describe 'predicate methods and predicate matchers' do
  it 'can be tested with Ruby methods' do
    result = 16 / 2
    expect(result.even?).to eq(true)
  end

  it 'can be tested with predicate matchers' do
    # be_even is a predicate matcher
    # it is a Ruby method that ends with a ?
    # can be used with expect(...).to or expect(...).not_to
    expect(16 / 2).to be_even
    expect(15).not_to be_even
    expect(0).to be_zero
    expect([]).to be_empty
  end

  describe 0 do
    it { is_expected.to be_zero }
  end
end
