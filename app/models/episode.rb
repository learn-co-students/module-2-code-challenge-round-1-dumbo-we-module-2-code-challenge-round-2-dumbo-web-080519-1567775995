class Episode < ApplicationRecord
  has_many :ratings
  has_many :guests, through: :ratings
end
