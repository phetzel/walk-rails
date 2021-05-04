class CreateWalks < ActiveRecord::Migration[6.1]
  def change
    create_table :walks do |t|
      t.integer :user_id, null: false
      t.float :distance, null: false
      t.string :time, null: false

      t.timestamps
    end
    add_index :walks, :user_id
  end
end
