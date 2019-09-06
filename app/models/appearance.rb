class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  validates :rating, length: { minimum: 1 }
  validates :rating, length: { maximum: 5 }
end
