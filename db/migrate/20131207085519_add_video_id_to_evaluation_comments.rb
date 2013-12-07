class AddVideoIdToEvaluationComments < ActiveRecord::Migration
  def change
    add_column :evaluation_comments, :video_id, :integer
  end
end
