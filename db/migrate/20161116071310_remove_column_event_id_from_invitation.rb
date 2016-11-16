class RemoveColumnEventIdFromInvitation < ActiveRecord::Migration
  def change
    remove_column :invitations, :event_id, :integer
  end
end
