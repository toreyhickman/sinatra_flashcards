# Move to play
post '/show_answer' do
  @card = Card.find(params[:id])
  @show_answer = true
  redirect "/play/......."
end

# Move to play
post '/finish' do

end


get '/play/:round_id/stats' do
  round = Round.find(params[:round_id])
  correct, incorrect = 0, 0
  round.guesses.each do |guess|
    correct += 1 if guess.correct?
  end
  "You scored #{correct}/#{round.guesses.count(:all)}"
end

# Move to play
post '/create_guess' do
end

# Move to play
get '/play/:round_id' do
  if round.guesses.count == round.deck.count
    display finished page
  else
    find all the ids of cards in deck
    find all the card_ids of guesses
  end
end
