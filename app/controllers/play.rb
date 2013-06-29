get '/play/:deck_name' do
  puts params[:deck_name]
  round = Round.new
  unless session[:round_id]
    create_game(params[:deck_name])
  end
  
  deck = Deck.find(session[:deck_id])
  @card = deck.cards.sample
  
  erb :play_round
end



post '/show_answer' do
  @card = Card.find(params[:id])
  @show_answer = true
  erb :show_answer
end


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


post '/create_guess' do
end

# ===> Psuedo code

# get '/play/:round_id' do
#   if round.guesses.count == round.deck.count
#     display finished page
#   else
#     find all the ids of cards in deck
#     find all the card_ids of guesses
#   end
#   end
# end


# post '/next' do
#   card = Card.find(params[:id])

#   if params[:guess] == card.answer
#     session[:score] += 1
#     puts "Score increased to #{session[:score]}."
#   end

#   puts "Score outside the loop is #{session[:score]}."

#   redirect "/play/:deck_name"
# end
