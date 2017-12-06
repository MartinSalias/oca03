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
			@validos += 1
			if @validos == 3
				@vidas += 1
				@validos = 0
			end
			return true 
		else
			@vidas -= 1
			return false
		end
	end

	def getVidas
		return @vidas
	end

	def setNum1(num1)
		@num1 = num1.to_i
	end

	def setNum2(num2)
		@num2 = num2.to_i
	end

end
