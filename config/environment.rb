require 'rake'
require 'bundler/setup'
require 'active_record'


require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
# require_all 'lib'
# ActiveRecord::Base.logger = Logger.new(STDOUT)
# ActiveRecord::Base.logger = nil
require_all 'apps'
