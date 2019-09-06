class Episode < ApplicationRecord
    has_many :users
    has_many :guests, through: :users

    def guests
        Guest.all
    end
end
