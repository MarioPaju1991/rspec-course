class ProfessionalWrestler
  attr_reader :name, :finishing_move

  def initialize(name, finishing_move)
    @name = name
    @finishing_move = finishing_move
  end
end

RSpec.describe 'have_attributes matcher' do
  describe ProfessionalWrestler.new('Stone Cold Steve Austin', 'Stunner') do
    it 'checks for object attribute and proper values' do
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin')
      expect(subject).to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner')
    end

    it { is_expected.to have_attributes(name: 'Stone Cold Steve Austin') }
    it { is_expected.to have_attributes(name: 'Stone Cold Steve Austin', finishing_move: 'Stunner') }
  end
end
```

### 3.6.2. `be_within` Matcher
```ruby
# Path: spec/be_within_matcher_spec.rb
RSpec.describe 'be_within matcher' do
  it 'checks that a float is within a delta of another float' do
    expect(12.5).to be_within(0.5).of(12.0)
    expect(12.5).to be_within(5).percent_of(10.0)
  end

  it { is_expected.to be_within(0.5).of(12.0) }
  it { is_expected.to be_within(5).percent_of(10.0) }
end
```

### 3.6.3. `start_with` and `end_with` Matchers
```ruby
# Path: spec/start_with_and_end_with_matcher_spec.rb
RSpec.describe 'start_with and end_with matcher' do
  describe 'caterpillar' do
    it 'should check for substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('pillar')
    end

    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('pillar') }
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at beginning or end of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b)
      expect(subject).to end_with(:d)
      expect
