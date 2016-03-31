class Post < ActiveRecord::Base
  establish_connection DB2_CONF
  belongs_to :user
end
