class AddNameFirstnameAndNicknameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :firstname, :sting
    add_column :users, :name, :sting
    add_column :users, :nickname, :sting
  end
end
