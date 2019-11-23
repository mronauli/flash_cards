class Round

  attr_reader :deck, :turns

  def initialize(deck)
    @deck = deck
    @turns = []
  end

  def current_card
    @deck.cards.first
  end

  def take_turn(guess)
    turn = Turn.new(guess, current_card)
    old_card = @deck.cards.shift
    turns << turn
    @deck.cards.push(old_card)
    turn
  end
    
  def number_correct
    correct = 0
    @turns.each do |turn|
      if turn.correct? == true
        correct += 1
      end
    end
    return correct
  end


end
