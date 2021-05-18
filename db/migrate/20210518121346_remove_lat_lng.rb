class RemoveLatLng < ActiveRecord::Migration[6.1]
  def change
    remove_column :lat_lngs, :lat
    remove_column :lat_lngs, :lng
  end
end
