class CreateFlats < ActiveRecord::Migration[5.2]
  def change
    create_table :flats do |t|
      t.string :title
      t.text :description
      t.integer :price_per_night
      t.string :housing_type
      t.integer :max_ppl
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
