class Comment < ActiveRecord::Base
  attr_accessible :comment, :dislikes, :likes, :video_id, :user_name

  belongs_to :video, :inverse_of => :comments
  has_many :evaluation_comments

end
