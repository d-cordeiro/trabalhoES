class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.boolean :privacy
      t.text :description
      t.string :title
      t.string :category
      t.integer :age
      t.boolean :has_comments
      t.integer :likes
      t.integer :dislikes

      t.timestamps
    end
  end
end
