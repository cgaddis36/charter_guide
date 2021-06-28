class BoatServiceTrip < ApplicationRecord
  belongs_to :boat_service
  belongs_to :trip
end
