class AddPlaceToOrder < ActiveRecord::Migration[5.0]
  def change
    add_reference :orders, :place, foreign_key: true
  end
end
