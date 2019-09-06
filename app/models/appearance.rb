class Appearance < ApplicationRecord
    belongs_to :episode
    belongs_to :guest
    validates :rating, numericality: { only_integer: true, greater_than: 0, less_than: 6 }
    validates :guest, :episode, presence: true
end
