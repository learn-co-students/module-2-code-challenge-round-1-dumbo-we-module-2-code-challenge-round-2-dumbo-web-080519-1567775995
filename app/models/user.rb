class User < ApplicationRecord
    belongs_to :guests
    belongs_to :episodes
end
