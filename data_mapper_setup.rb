require 'data_mapper'
require_relative 'app/models/link'


env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")

DataMapper.finalize

DataMapper.auto_upgrade!
