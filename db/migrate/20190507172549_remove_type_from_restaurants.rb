class RemoveTypeFromRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :category, :string
    remove_column :restaurants, :type, :string
  end
end
