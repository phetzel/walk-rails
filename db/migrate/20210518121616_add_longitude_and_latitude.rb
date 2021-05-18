class AddLongitudeAndLatitude < ActiveRecord::Migration[6.1]
  def change
    add_column :lat_lngs, :latitude, :float
    add_column :lat_lngs, :longitude, :float
  end
end
