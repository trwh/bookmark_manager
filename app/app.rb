get '/links' do
  @links = Link.all
  erb :'links/index'
end
