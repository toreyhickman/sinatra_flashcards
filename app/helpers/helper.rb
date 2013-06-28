def create_game(deck_name)
  deck = Deck.find_by_name(deck_name)
  round = Round.create(:deck_id => deck.id, :user_id => session[:user_id])
  session[:score] = 0
  session[:round_id] = round.id
  session[:deck_id] = deck.id
end
