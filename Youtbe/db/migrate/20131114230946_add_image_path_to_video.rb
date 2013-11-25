class AddImagePathToVideo < ActiveRecord::Migration
  def change
    add_column :videos, :image_path, :string
  end
end
