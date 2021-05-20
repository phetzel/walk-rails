class AddActivityToWalks < ActiveRecord::Migration[6.1]
  def change
    add_column :walks, :activity, :string
  end
end
