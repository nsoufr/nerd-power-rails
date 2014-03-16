class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include User::Friendable

  has_many :pendent_invitations, class_name: 'Invitation', foreign_key: :sender_id
  has_many :inbox_invitations, class_name: 'Invitation', foreign_key: :receiver_id
  has_many :posts

  validates_presence_of :nickname, :name
  validates_uniqueness_of :nickname
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
  validates_format_of :nickname, with: /\A[a-z0-9][a-z0-9_]*\Z/

  def avatar(size = 70)
    hash = Digest::MD5.hexdigest(email)
    "http://www.gravatar.com/avatar/#{hash}?s=#{size}&d=identicon&r=G"
  end

  def public_nickname
    "@#{nickname}"
  end
end
