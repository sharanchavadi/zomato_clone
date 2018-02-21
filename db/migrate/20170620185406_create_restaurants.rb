class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :city_id
      t.integer :location_id
      t.string :address
      t.float :cost_avg
      t.boolean :delivery_facility

      t.timestamps null: false
    end
  end
end
