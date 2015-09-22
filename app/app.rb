require 'sinatra/base'
require_relative '../data_mapper_setup'

class BookmarksWeb < Sinatra::Base
  get '/links'  do
    @links = Link.all
    p @links
    erb :links
end

  set :views, proc { File.join(root, 'views') }
  # start the server if ruby file executed directly
  run! if app_file == $0

end
