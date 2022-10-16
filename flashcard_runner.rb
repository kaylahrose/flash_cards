require './lib/card'
require './lib/turn'
require './lib/deck'
require './lib/round'
require './lib/card_generator'

# require 'pry'; binding.pry
filename = 'cards.txt'
cards = CardGenerator.new(filename).cards
deck = Deck.new(cards)
round = Round.new(deck)

# card_1 = Card.new('What is the capital of Alaska?', 'Juneau', :Geography)
# card_2 = Card.new('The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?', 'Mars', :STEM)
# card_3 = Card.new('Describe in words the exact direction that is 697.5° clockwise from due north?', 'North north west',:STEM)
# card_4 = Card.new('What is 6 + 5?', '11', :STEM)

# deck = Deck.new([card_1, card_2, card_3, card_4])
# round = Round.new(deck)

round.start
round.complete
