class Walk < ApplicationRecord
    belongs_to :user
    has_many :lat_lngs
end
