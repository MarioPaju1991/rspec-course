RSpec.describe Array do
  subject(:sally) do
    [1, 2]
  end

  it 'should have two elements' do
    expect(subject.length).to eq(2)
    subject.pop
    expect(subject.length).to eq(1)
  end

  it 'should have two elements' do
    expect(subject.length).to eq(2)
  end
end
