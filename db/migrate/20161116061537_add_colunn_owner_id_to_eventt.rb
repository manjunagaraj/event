class AddColunnOwnerIdToEventt < ActiveRecord::Migration
  def change
    add_column :eventts, :owner_id, :integer
  end
end
