class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.integer :likes
      t.integer :dislikes
      t.integer :video_id

      t.timestamps
    end
  end
end
