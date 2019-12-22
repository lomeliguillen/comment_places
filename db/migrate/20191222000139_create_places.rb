class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :longitude
      t.string :latitude
      t.timestamps
    end
  end
end
