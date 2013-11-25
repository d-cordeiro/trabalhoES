class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name
      t.integer :channel_id

      t.timestamps
    end
  end
end
