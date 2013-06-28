class Card < ActiveRecord::Base
  validates :prompt, :presence => true
  validates :answer, :presence => true

  belongs_to :deck
  has_many :guesses
end
