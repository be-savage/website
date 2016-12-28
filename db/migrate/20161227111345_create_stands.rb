class CreateStands < ActiveRecord::Migration[5.0]
  def change
    create_table :stands do |t|
      t.string :label
      t.string :location

      t.timestamps
    end
  end
end
