require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"
require "pry-byebug"

# http://localhost:4567/ aka home page
get "/" do
  @restaurants = Restaurant.all
  # send to the view
  erb :index
end

post "/restaurants" do
  # use the form params to create a restaurant
  @restaurant = Restaurant.new(
    name: params[:name],
    address: params[:address],
    category: params[:category]
  )
  @restaurant.save
  erb :show
end

# http://localhost:4567/restaurants/2
get "/restaurants/:id" do
  @restaurant = Restaurant.find(params[:id])
  erb :show
end





