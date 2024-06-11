class Session < ApplicationRecord
    has_many :bookings
    belongs_to :trainer, :optional => true
end