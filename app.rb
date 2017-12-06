require 'sinatra'
require "./lib/juego.rb"

get '/' do
	@num1 = rand(10)
	@num2 = rand(10)
	@operador = "+"	
	
	@@juego = Juego.new(@num1, @num2, @operador)
	
	erb :formulario

end

post "/resultado" do

	@res = params["resultado"].to_i

	@esvalido = @@juego.validarResultado(@res)

	if @esvalido == true
		"ok"
	else
		"Burro"		
	end
	
end

