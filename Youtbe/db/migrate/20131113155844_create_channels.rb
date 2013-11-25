class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.integer :account_id
      t.string :photo

      t.timestamps
    end
  end
end
