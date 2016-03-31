class User < ActiveRecord::Base
  establish_connection DB1_CONF
  has_many :posts
end
