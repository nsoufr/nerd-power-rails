class User
  module Friendable
    extend ActiveSupport::Concerns

    def add_friend!(user)
      storage.multi do |c|
        c.sadd key, user.id
        c.sadd key(user.id), id
      end
    end

    def friends
      User.find storage.smembers key
    end

    def friend_of?(user)
      storage.sismember key, user.id
    end

    private
    def key(user_id = id)
      "user:#{user_id}"
    end

    def storage
      Redis::Namespace.new(:friendship, redis: $redis)
    end

  end
end
