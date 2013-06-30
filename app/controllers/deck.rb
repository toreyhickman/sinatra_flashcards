get '/d/:id' do
	@deck = Deck.find(params[:id])
	erb :deck
end