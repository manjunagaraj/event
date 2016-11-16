class RemoveColunnInviteesFromEventt < ActiveRecord::Migration
  def change
    remove_column :eventts, :invitees, :string
  end
end
