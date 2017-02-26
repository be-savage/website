class AddRecontactAndPlaceDetailsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :recontact_info, :string
    add_column :orders, :place_details, :string
  end
end
