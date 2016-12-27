class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.text :content
      t.string :author

      t.timestamps
    end
  end
end
