class CreateChallenges < ActiveRecord::Migration[5.0]
  def change
    create_table :challenges do |t|
      t.string :label
      t.string :author
      t.integer :status, default: 0
      t.string :video_link

      t.timestamps
    end
  end
end
