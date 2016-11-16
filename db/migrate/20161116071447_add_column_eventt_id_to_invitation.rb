class AddColumnEventtIdToInvitation < ActiveRecord::Migration
  def change
    add_column :invitations, :eventt_id, :integer
  end
end
