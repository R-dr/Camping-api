class LocationFacility < ApplicationRecord
    # join table relations
  belongs_to :facility
  belongs_to :location
end
