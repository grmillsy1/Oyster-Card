require './lib/oystercard'

describe OysterCard do
  describe 'feature test' do
    it 'can be topped up, touch_in and touch_out of a station, deduct the fare and show the end balance' do
    card = OysterCard.new
    card.top_up(5)
    card.touch_in("in")
    card.touch_out("out")
    expect(card.balance).to eq 4
    end
  end
end

# describe Journey do
#   describe 'feature test' do
#     it 'can create a journey with a start station, end station and creates and error if either are missing' do
#
#
#
#
#     end
#   end
#end
