class EvaluationComment < ActiveRecord::Base
  attr_accessible :comment_id, :eval, :user, :video_id

  belongs_to :comment, :inverse_of => :evaluation_comments
end
