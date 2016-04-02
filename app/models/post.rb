class Post < ActiveRecord::Base
  establish_connection DB2_CONF

  def self.table_name_prefix
    "#{self.connection.current_database}."
  end

  # self.table_name = "#{self.connection.current_database}.posts"
  belongs_to :user
end
