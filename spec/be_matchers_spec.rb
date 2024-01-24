RSpec.describe 'be matchers' do
  it 'can test for truthiness' do
    expect(true).to be_truthy
    expect(false).to be_falsey
    expect(nil).to be_falsey
    expect(0).not_to be_falsey
    expect(1).to be_truthy
  end

  it 'can test for nil' do
    expect(nil).to be_nil
    expect(false).not_to be_nil
    expect(0).not_to be_nil
  end
end
