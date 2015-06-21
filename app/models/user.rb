class User < ActiveRecord::Base
  has_many :follows_followers, class_name: 'Follow', foreign_key: :following_id
  has_many :follows_following, class_name: 'Follow', foreign_key: :follower_id

  has_many :followers, through: :follows_followers
  has_many :following, through: :follows_following

  validates_presence_of   :screen_name, :name
  validates_uniqueness_of :screen_name

  def follow!(user_to_follow)
    follows_following.create!(following_id: user_to_follow.id)
  end

  def unfollow!(user_to_unfollow)
    follows_following.find_by(following_id: user_to_unfollow.id).destroy!
  end
end
