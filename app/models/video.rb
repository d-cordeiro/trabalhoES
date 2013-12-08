class Video < ActiveRecord::Base
  attr_accessible :age, :category, :description, :dislikes, :has_comments, :likes, :privacy, :title, :featured, :path, :playlist_id, :image_path, :views, :panda_video_id

  belongs_to :playlist, :inverse_of => :videos
  has_many :comments

  validates_presence_of :panda_video_id

  def panda_video
    @panda_video ||= Panda::Video.find(panda_video_id)
  end

end
