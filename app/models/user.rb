class User < ActiveRecord::Base
  validates_presence_of   :screen_name, :name
  validates_uniqueness_of :screen_name
end
