require 'sinatra'
require "./lib/juego.rb"

get '/' do
	@num1 = rand(10)
	@num2 = rand(10)

	@operador = "+"	

	@@juego = Juego.new(@num1, @num2, @operador)
	@vidas = @@juego.getVidas
	@nivel = @@juego.getNivel
	erb :formulario

end

post "/resultado" do

	@res = params["resultado"].to_i

	@vidas = @@juego.getVidas
	@nivel = @@juego.getNivel

	@esvalido = @@juego.validarResultado(@res)

	if @esvalido == true
		erb :correcto
	else
		erb :incorrecto
	end
	
end


post "/siguiente" do
	@num1 = rand(10)
	@num2 = rand(10)
	if @@juego.getNivel == 1
		@operador = "+"
	elsif @@juego.getNivel == 2
		@operador = "-"
	elsif @@juego.getNivel == 3
		@operador = "*"
	end

	if @@juego.getNivel == 4
	erb :winner
	else 
	@vidas = @@juego.getVidas
	@nivel = @@juego.getNivel
	if @vidas == 0
		erb :perdio
	else
		@@juego.setNum1(@num1)
		@@juego.setNum2(@num2)
		erb :formulario
	end
	end
	
end

post "/volveraempezar" do
	@num1 = rand(10)
	@num2 = rand(10)
	@operador = "+"	

	@@juego = Juego.new(@num1, @num2, @operador)
	@vidas = @@juego.getVidas
	@nivel = @@juego.getNivel
	erb :formulario
end
