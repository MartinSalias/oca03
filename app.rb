require 'sinatra'
require "./lib/juego.rb"

get '/' do

	#@@juego = Juego.new(rand(10),rand(10),"+")
  @@juego = Juego.new(2,2,"+")
  	  
	erb :formulario

end

post "/resultado" do

	@res = params["resultado"].to_i

	@esvalido = @@juego.validarResultado(@res)

	if @esvalido
		"ok"
	else
		"Burro"
	end
	
end

