class Rating < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :rate, numericality: {greater_than_or_equal_to: 0}
  validates :rate, numericality: {less_than_or_equal_to: 5}
end
