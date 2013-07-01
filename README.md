sinatra_flashcards
==================

The session cookie will hold the user_id, the round_id, the deck_id, and the score.

Features we want to add:

1. create a guess object that will belong to the round and will store the "correctness" boolean;
 guess object also stores the card_id, that's how we check for unanswered cards
2. if unanswered cards in round, go to random card, otherwise show the round statistics page
3. We will probably have to collect all the cards, then subtract the cards that have already been answered.
4. We are thinking that we should append the round_id as part of the route so we are able to query the
  database and get all the information we need. 
5. After each guess and the user is shown a card, we will check a conditional to see if all cards have been
  played. If they have been played, we will render the stats page. Otherwise, we continue playing.
6. Add the user profile page => this page links to each individual round summary.
7. Add individual round summary page.
8. split controllers into respective files (controller is getting too long)


Questions:
1. Where do we calculate round percentage? It's in the controller now, push to helper method?
2. Add percentage calculation for correct guesses
3. Iterate over the guesses and display the details for each guess to include the card information
 (question and response) and if that question was answered correctly.

NOTE: we are only going to calculate the correctness percentage. We are not going to check answer-by-answer
    basis.
