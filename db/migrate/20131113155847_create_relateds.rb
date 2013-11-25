class CreateRelateds < ActiveRecord::Migration
  def change
    create_table :relateds do |t|
      t.integer :video_id
      t.integer :related_id

      t.timestamps
    end
  end
end
