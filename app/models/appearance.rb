class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode

  # validates :rating, presence: true
  #add to stay between 1-5
end
