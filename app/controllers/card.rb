get '/c/:id' do
	@card = Card.find(params[:id])
	erb :card
end