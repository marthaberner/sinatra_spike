require 'sinatra'
require './lib/item'
require './lib/items_repository'

get '/' do
  erb :index
end

get '/items' do
  @query = params[:filter]
  erb :items_list
end

