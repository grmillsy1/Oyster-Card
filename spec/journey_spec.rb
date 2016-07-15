require 'journey'

describe Journey do
#  subject(:journey) {Journey.new}
  let(:station) {double :station}

  it{is_expected.to respond_to(:start)}
  it 'remembers the start station' do
    subject.start(station)
    expect(subject.start_station).to eq station
  end

  it{is_expected.to respond_to(:end)}
  it 'remembers the end station' do
    subject.end(station)
    expect(subject.end_station).to eq station
  end

  describe '#in_journey?' do

    it 'returns true when in journey' do
      subject.start(station)
      expect(subject).to be_in_journey
    end

    it 'completed is true when there is an end station' do
      subject.start(station)
      subject.end(station)
      expect(subject.completed?).to be true
    end

    it 'is no longer in journey when journey completed' do
      subject.start(station)
      subject.end(station)
      expect(subject).to_not be_in_journey
    end
  end

  describe '#fare' do

    it 'returns the minimum fare' do
      subject.start(station)
      subject.end(station)
      expect(subject.fare).to eq 1
    end

    it 'returns penalty fair if journey did not start' do
      subject.end(station)
      expect(subject.fare).to eq 6
    end
    it 'returns penaly fare if journey did not end' do
      subject.start(station)
      expect(subject.fare).to eq 6
    end
  end
end
