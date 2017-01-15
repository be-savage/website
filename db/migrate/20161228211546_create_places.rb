class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :label
      t.text :description
      t.references :stand, foreign_key: true

      t.timestamps
    end
  end
end
