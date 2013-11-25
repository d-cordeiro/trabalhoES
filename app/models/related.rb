class Related < ActiveRecord::Base
  attr_accessible :related_id, :video_id

  belongs_to :video, :inverse_of => :related
  belongs_to :related, :class_name => 'Video'

end
