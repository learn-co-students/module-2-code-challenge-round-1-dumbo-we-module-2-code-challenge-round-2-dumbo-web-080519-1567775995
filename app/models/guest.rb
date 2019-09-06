class Guest < ApplicationRecord
  has_many :appearances, dependent: :destroy
  has_many :episodes, through: :appearances

  validates :name, :occupation, presence: true
  validates :name, uniqueness: true
end
