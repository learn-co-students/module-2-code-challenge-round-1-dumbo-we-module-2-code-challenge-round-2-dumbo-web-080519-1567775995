class Guest < ApplicationRecord

    has_many :users
    has_many :episodes, through: :users
    
end
