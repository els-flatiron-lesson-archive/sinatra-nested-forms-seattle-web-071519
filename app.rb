require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      pirate = params[:pirate]
      @name = pirate[:name]
      @weight = pirate[:weight]
      @height = pirate[:height]
      @ships = pirate[:ships]
      # @pirate = Pirate.new(name: params[pirate[name]], weight: params[pirate[weight]], height: params[pirate[height]])
      # @ship1 = Ship.new(name: params[pirate][:ships][0][:name], type: params[pirate][:ships][0][:type], booty: params[pirate][:ships][0][:booty])
      # @ship2 = Ship.new(name: params[pirate][:ships][1][:name], type: params[pirate][:ships][1][:type], booty: params[pirate][:ships][1][:booty])

      erb :'pirates/show'
    end

  end
end
