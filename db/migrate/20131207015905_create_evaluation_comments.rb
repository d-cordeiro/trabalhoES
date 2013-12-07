class CreateEvaluationComments < ActiveRecord::Migration
  def change
    create_table :evaluation_comments do |t|
      t.string :user
      t.integer :eval
      t.integer :comment_id

      t.timestamps
    end
  end
end
