class Player < ApplicationRecord
  belongs_to :game
  validates :name, presence: true, length: {minimum: 3, maximum: 15}
end
