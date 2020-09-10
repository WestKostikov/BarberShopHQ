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
	@barbers = Barber.all
	erb :index
end

get '/visit' do
  erb :visit
end


post '/visit' do 

	@username = params[:username]
	@phone = params[:phone]
	@datetime = params[:datestamp]
	@barber = params[:barber]
	@color = params[:color]


	c = Client.new
	c.name = @username
  	c.phone = @phone
 	c.datestamp = @datestamp
  	c.barber = @barber
  	c.color = @color
  	c.save


	erb "<h2>Спасибо, Вы записались!</h2>"

end