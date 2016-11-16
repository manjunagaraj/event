class RemoveColumnUserIdFromInvitation < ActiveRecord::Migration
  def change
    remove_column :invitations, :user_id, :integer
  end
end
