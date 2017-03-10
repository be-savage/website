class AddPublicIdToChallenge < ActiveRecord::Migration[5.0]
  def change
    add_column :challenges, :public_id, :integer
  end
end
