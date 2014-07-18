require "sinatra"
require "gschool_database_connection"
require "rack-flash"
require "./lib/users_table"

class App < Sinatra::Application
  enable :sessions
  use Rack::Flash


  def initialize
    super
    @users_table = UsersTable.new
    (GschoolDatabaseConnection::DatabaseConnection.establish(ENV["RACK_ENV"]))

  end

  get "/" do
    "Hello"
  end
end