class Juego

	def initialize(num1,num2,operador)
		
		@num1 = num1
		@num2 = num2

		@operador = operador

	end    

	def validarResultado(resultado)

		@res = resultado
		@res1 = @num1 + @num2 

		if @res1 == @res
			return true
		else
			return false
		end
	end
end
