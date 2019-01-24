require 'sinatra/base'
require 'date'

class Birthday < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/bears' do
    @name = params[:name]
    @day = params[:day].to_i
    @month = params[:month].to_i


    @today = Date.today
    @year = @today.year

    @birthday = Date.new(@year, @month, @day)

    @days_to_go = @birthday - @today
    @days_to_go = @days_to_go.to_i


    erb :bears
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
