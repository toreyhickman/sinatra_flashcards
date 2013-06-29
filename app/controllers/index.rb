before do
  @decks = Deck.all
end

get '/' do
  erb :index
end



# Move to play or delete
# get '/play/:deck_name' do
#   puts params[:deck_name]
#   unless session[:round_id]
#     create_game(params[:deck_name])
#   end
  
#   deck = Deck.find(session[:deck_id])
#   @card = deck.cards.sample
  
#   erb :play_round
# end






# Move / rename / delete
# post '/next' do

#   card = Card.find(params[:id])

#   if params[:guess] == card.answer
#     session[:score] += 1
#     puts "Score increased to #{session[:score]}."
#   end

#   puts "Score outside the loop is #{session[:score]}."

#   redirect "/play/:deck_name"
# end






