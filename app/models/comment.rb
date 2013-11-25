class Comment < ActiveRecord::Base
  attr_accessible :comment, :dislikes, :likes, :video_id

  belongs_to :video, :inverse_of => :comments

end
