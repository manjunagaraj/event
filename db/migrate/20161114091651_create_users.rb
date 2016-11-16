class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.string :uname
      t.string :email
      t.integer :phnumber
      t.integer :event_id
      t.integer :paasword_digest

      t.timestamps null: false
    end
  end
end
