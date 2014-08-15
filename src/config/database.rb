require 'rubygems'
require 'data_mapper'
require 'dm-migrations'
require 'dm-migrations/migration_runner'

# The models
require_relative '../models/init'

module DCustom

  # @class    class DatabaseSetup {{{
  # @brief    This class will handle database setup in the application. It defines 3 environments.
  #           That are development, test and productiom.
  class DatabaseSetup

    def initialize options = nil
      setup
    end

    # @fn       def setup {{{
    # @brief    Sets up the databse based on the environment.
    def setup
      database_url = ENV['DATABASE_URL'] || "sqlite3://#{File.expand_path('../../database/development.sqlite', File.dirname(__FILE__))}"
      DataMapper.setup(:default, database_url)
      DataMapper::Logger.new( STDOUT, :debug )
      DataMapper.finalize
    end # }}}

  end # class DatabaseSetup }}}

end
