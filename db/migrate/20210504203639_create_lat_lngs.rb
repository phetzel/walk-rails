class CreateLatLngs < ActiveRecord::Migration[6.1]
  def change
    create_table :lat_lngs do |t|
      t.float :lat, null: false
      t.float :lng, null: false
      t.integer :walk_id, null: false
      t.integer :num

      t.timestamps
    end
    add_index :lat_lngs, :walk_id
  end
end
