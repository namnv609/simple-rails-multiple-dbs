# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ENV["ENV"] ||= "development"

db_conf = YAML::load(File.open(File.join('./', "config", "database.yml")))

DB1_CONF = db_conf[ENV["ENV"]]
DB2_CONF = db_conf["#{Rails.env}_sec"]
