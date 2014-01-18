class User < ActiveRecord::Base

  has_many :pendent_invitations, -> { where status: false },class_name: 'Invitation', foreign_key: :sender_id
  has_many :inbox_invitations, -> { where status: false }, class_name: 'Invitation', foreign_key: :receiver_id


  def friends
    Invitation.where('sender_id = ? OR receiver_id = ?', id, id).confirmed
  end

  def send_invitation_to(user)
    pendent_invitations.create!(receiver: user)
  end


end
