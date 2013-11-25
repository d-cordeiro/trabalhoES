class CreateCaptchas < ActiveRecord::Migration
  def change
    create_table :captchas do |t|
      t.string :photo
      t.string :code

      t.timestamps
    end
  end
end
