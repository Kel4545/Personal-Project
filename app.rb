require "sinatra"
require "gschool_database_connection"
require "rack-flash"
require "active_record"
require "excellent"

class App < Sinatra::Application
  enable :sessions
  use Rack::Flash

  def initialize
    super
    @database_connection = GschoolDatabaseConnection::DatabaseConnection.establish(ENV["RACK_ENV"])
  end

  get "/" do
    erb :home
  end
  end