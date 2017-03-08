class AddLinkToChallenge < ActiveRecord::Migration[5.0]
  def change
    add_column :challenges, :link, :string
  end
end
