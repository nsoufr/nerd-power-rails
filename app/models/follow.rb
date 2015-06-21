class Follow < ActiveRecord::Base
  has_many :followers, class_name: 'User', primary_key: :follower_id, foreign_key: :id
  has_many :following, class_name: 'User', primary_key: :following_id, foreign_key: :id

  validates_presence_of :follower_id, :following_id
  validates_uniqueness_of :follower_id, scope: :following_id
end
