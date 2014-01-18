class AddStatusToInvitations < ActiveRecord::Migration
  def change
    add_column :invitations, :status, :boolean, default: false
  end
end
