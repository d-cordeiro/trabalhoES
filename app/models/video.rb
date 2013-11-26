class Video < ActiveRecord::Base
  attr_accessible :age, :category, :description, :dislikes, :has_comments, :likes, :privacy, :title, :featured, :path, :playlist_id, :image_path, :views

  belongs_to :playlist, :inverse_of => :videos
  has_many :comments

end
