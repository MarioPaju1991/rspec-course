RSpec.describe'firetruck' do
  it 'checks if firetruck starts with fire and ends with truck' do
  expect(subject).to start_with('fire').and end_with('truck')
  end
end

RSpec.describe 20 do
  it 'tests if 20 is even and it responds to times method' do
  expect(subject).to be_even.and respond_to(:times)
  end
end
RSpec.describe [4, 8, 15, 16, 23, 42] do
  it 'checks if array starts with 4,8,and 15' do
  expect(subject).to start_with(4, 8, 15).and include(42)
  end
end
