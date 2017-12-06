class Juego

	def initialize(num1,num2,operador)
		
		@num1 = num1
		@num2 = num2

		@operador = operador
		@vidas = 3
		@validos = 0

	end    

	def validarResultado(resultado)

		@res = resultado
		@res1 = @num1 + @num2 

		if @res1 == @res
			return true
			@validos += 1
			if @validos == 3
				@vidas += 1
				@validos = 0
			end 
		else
			return false
		end
	end
end
