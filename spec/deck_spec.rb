require './lib/card'
require './lib/deck'

# RSpec.describe Turn do



# end


RSpec.describe Deck do
    it 'exists' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        cards = [card_1, card_2, card_3]
        deck = Deck.new(cards)

        expect(deck).to be_instance_of(Deck)
    end

    # test it has an array of cards
    it 'has an array of cards' do 
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        cards = [card_1, card_2, card_3]
        deck = Deck.new(cards)

        expect(deck.cards).to eq(cards)
        # did I write this test correctly? what if the var cards doesn't equal [#<Card:123xyz...>, ] (an array of card objs)?
    end

    # test it counts the array of cards


    # test it identifies the cards in a certain category
    it 'identifies number of cards in a specific category' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        cards = [card_1, card_2, card_3]
        deck = Deck.new(cards)

        expect(deck.cards_in_category(:STEM)).to eq([card_2, card_3])
        # Did I write this test correctly? In iteration 2 requirements, the pry return is the data address. does that change every time it runs?
    end



    # test a different category
    it 'tests a different category' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        cards = [card_1, card_2, card_3]
        deck = Deck.new(cards)

        expect(deck.cards_in_category(:Geography)).to eq([card_1])
    end



    # test an undefined category with no cards
    it 'tests an undefined category with no cards' do
        card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
        card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
        card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
        cards = [card_1, card_2, card_3]
        deck = Deck.new(cards)

        expect(deck.cards_in_category("Pop Culture")).to eq([])
    end
end




