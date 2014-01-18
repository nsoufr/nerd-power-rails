class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps
    end
    add_index :invitations, :sender_id
    add_index :invitations, :receiver_id
  end
end
