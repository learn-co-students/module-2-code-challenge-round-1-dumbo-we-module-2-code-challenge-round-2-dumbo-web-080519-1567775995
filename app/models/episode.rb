class Episode < ApplicationRecord
  has_many :appearances, dependent: :destroy
end
