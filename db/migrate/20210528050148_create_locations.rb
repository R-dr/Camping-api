class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.references :location_type, null: false, foreign_key: true, optional: false
      t.string :address
      t.string :longitude
      t.string :latitude
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
