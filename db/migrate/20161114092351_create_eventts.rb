class CreateEventts < ActiveRecord::Migration
  def change
    create_table :eventts do |t|
      t.string :title
      t.string :venue
      t.datetime :date
      t.datetime :time
      t.string :description
      t.string :invitees
      t.string :status

      t.timestamps null: false
    end
  end
end
