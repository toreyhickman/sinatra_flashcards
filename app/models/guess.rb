class Guess < ActiveRecord::Base
  validates :card_id, :presence => true
  validates :round_id, :presence => true
  validates :correct, :presence => true

  belongs_to :card
  belongs_to :round
end
