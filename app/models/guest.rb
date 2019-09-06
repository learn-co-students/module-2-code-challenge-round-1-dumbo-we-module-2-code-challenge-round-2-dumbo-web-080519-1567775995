class Guest < ApplicationRecord

  has_many :appearances
  has_many :guests, through: :appearances

  validates :name, :occupation, presence: true
  validates :name, uniqueness: true

end
