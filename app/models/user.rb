class User < ActiveRecord::Base

  has_many :pendent_invitations, class_name: 'Invitation', foreign_key: :sender_id
  has_many :inbox_invitations, class_name: 'Invitation', foreign_key: :receiver_id


end
