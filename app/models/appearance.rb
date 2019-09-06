class Appearance < ApplicationRecord
  belongs_to :episode
  belongs_to :guest

  validates :rating, numericality: {greater_than: 0, less_than_or_equal_to: 5}
end
