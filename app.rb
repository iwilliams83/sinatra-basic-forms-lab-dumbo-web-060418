require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    @new_puppy = Puppy.new(params)
    puts "New puppy name = #{@new_puppy.name}"
    erb :display_puppy
  end
end
