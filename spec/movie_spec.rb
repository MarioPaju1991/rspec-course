class Actor
  def initialize(name)
    @name = name
  end

  def ready?
    sleep(3)
    true
  end

  def act
    "I love you, baby"
  end

  def fall_off_ladder
    "Call my agent! No way!"
  end

  def light_on_fire
    false
  end
end

class Movie
  attr_reader :actor

  def initialize(actor)
    @actor = actor
  end

  def start_shooting
    if actor.ready?
      puts actor.act
      puts actor.fall_off_ladder
      puts actor.light_on_fire
    end
  end
end

RSpec.describe Movie do
  let(:stuntman) { double("Mr. Danger", ready?: true, act: "Any string at all", fall_off_ladder: "Sure! Let's do it", light_on_fire: true) }
  subject { described_class.new(stuntman) }

  describe "#start_shooting method" do
    it "expects an actor to do 3 actions" do
      # expect(stuntman).to receive(:ready?)
      # expect(stuntman).to receive(:act)
      # expect(stuntman).to receive(:fall_off_ladder)
      # expect(stuntman).to receive(:light_on_fire)

      # We can use the receive counts method to check how many times a method is called
      expect(stuntman).to receive(:ready?).exactly(1).times
      expect(stuntman).to receive(:act).once
      #We can use this so it is flexible to the number of times it is called even less than actual number will pass
      #Twice is the maximum number of times it can be called otherwise use at most
      #expect(stuntman).to receive(:act).twice
      expect(stuntman).to receive(:fall_off_ladder).at_most(1).times
      subject.start_shooting
    end
  end
end
