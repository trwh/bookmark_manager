require 'sinatra/base'
require_relative 'models/link'

class BookmarksWeb < Sinatra::Base

  # get '/links' do
  #   @links = Link.all
  #   erb :links
  # end

# start the server if ruby file executed directly
  run! if app_file == $0

  set :views, proc { File.join(root, 'views') }
end
