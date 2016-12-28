class AddStandToOrder < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :stand, foreign_key: true
  end
end
