class CreateEvaluations < ActiveRecord::Migration
  def change
    create_table :evaluations do |t|
      t.string :user
      t.integer :eval
      t.integer :video_id

      t.timestamps
    end
  end
end
