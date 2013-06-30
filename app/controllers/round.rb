post '/r/new' do
	@round = Round.create!(:user => User.find(params[:user_id]), :deck => Deck.find(params[:deck_id]))
	redirect "/r/#{@round.id}"
end

get '/r/:id' do
	@round = Round.find(params[:id])
	@deck = Deck.find(@round.deck_id)
	remaining_cards = @deck.cards.map {|card| card.id } - @round.guesses.map {|guess| guess.card_id }
	if remaining_cards.length == 0
		erb :round
	else
		@card = Card.find(remaining_cards.sample)
		erb :guess
	end
end

post '/r/:id/answer' do
	round = Round.find(params[:id])
	card = Card.find(params[:card_id])
	correct = params[:answer] == card.back
	round.guesses.create!(:card => Card.find(params[:card_id]), :round => round, :correct => correct, :response => params[:answer])
	redirect "/r/#{round.id}"
end