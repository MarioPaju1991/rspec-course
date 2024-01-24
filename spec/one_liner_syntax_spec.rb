RSpec.describe 'shorthand syntax' do
  subject { 5 }

  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  # The one-liner syntax is a shorthand way of writing an RSpec test.
  # It is not as clear as the example above, but it is a good way to
  # write simple tests.
  context 'with one-liner syntax' do
    it { is_expected.to eq(5) }
  end
end
