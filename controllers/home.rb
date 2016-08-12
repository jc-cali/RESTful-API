class HomeController < Sinatra::Base

  # load all the gems
  require 'bundler'
  Bundler.require

  set :views, File.expand_path('../../views', __FILE__)
  set :public_folder, File.expand_path('../../public', __FILE__)

  # CREATE TABLE ideas (id integer primary key autoincrement, content text);

  ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "Ideas.db"
  )
  not_found do
    {:message => 'not found',
    :status => 404}.to_json
  end

    get '/' do
      erb :hello
    end
end
