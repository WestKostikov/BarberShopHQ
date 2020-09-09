require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, { adapter: 'sqlite3', database: 'barbershop.db' }

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

get '/' do
  @barbers = Barber.order "created_at DESC"
  erb :index
end

get '/visit' do
  erb :visit
end

get '/bookings' do
  erb :bookings
end


post '/visit' do 
	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:datetime]
	@barber = params[:barber]
	@color = params[:color]


	erb "<h2>Спасибо, Вы записались!</h2>"

end