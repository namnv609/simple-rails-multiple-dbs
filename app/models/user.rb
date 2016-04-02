class User < ActiveRecord::Base
  establish_connection DB1_CONF

  def self.table_name_prefix
    "#{self.connection.current_database}."
  end

  # self.table_name = "#{self.connection.current_database}.users"
  has_many :posts
end
