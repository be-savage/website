class AddAttachmentAvatarToUsers < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.attachment :avatar
      t.attachment :avatar_hover
    end
  end

  def self.down
    remove_attachment :users, :avatar
    remove_attachment :users, :avatar_hover
  end
end
