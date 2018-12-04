require './environment'

module FormsLab
  class App < Sinatra::Base

get('/'){
  erb :root
}
get('/new'){
  erb :'pirates/new'
}

 post('/pirates'){
  @pirate = Pirate.new(params[:pirate])
  paramShips = params[:pirate][:ships]
  
  paramShips.each do |ship|
    Ship.new(ship)
  
  end
  @ships = Ship.all
  erb :'pirates/show'
}
end
end

