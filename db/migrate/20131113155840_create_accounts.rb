class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :email
      t.string :password
      t.time :date_birth
      t.boolean :admin

      t.timestamps
    end
  end
end
