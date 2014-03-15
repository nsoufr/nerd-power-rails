class User < ActiveRecord::Base
  include User::Friendable

  has_many :pendent_invitations, class_name: 'Invitation', foreign_key: :sender_id
  has_many :inbox_invitations, class_name: 'Invitation', foreign_key: :receiver_id
  has_many :posts

  def send_invitation_to(user)
    pendent_invitations.create!(receiver: user)
  end
end
