class Guest < ApplicationRecord
  has_many :appearances, dependent: :destroy
end
