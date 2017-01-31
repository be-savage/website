class AddClassificationToTeam < ActiveRecord::Migration[5.0]
  def change
    add_column :teams, :classification, :integer
  end
end
