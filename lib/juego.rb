class Juego

	def initialize(num1,num2,operador)
		
		@num1 = num1
		@num2 = num2

		@operador = operador
		@vidas = 3
		@validos = 0
		@nivel = 1
		@cantOperaciones = 0

	end    

	def validarResultado(resultado)

		@cantOperaciones += 1

		@res = resultado
		if @nivel == 1	
			@res1 = @num1 + @num2 
		elsif @nivel == 2
				@res1 = @num1 - @num2 
		elsif @nivel == 3
				@res1 = @num1 * @num2
		end

		if @cantOperaciones == 1
			@nivel += 1
			@cantOperaciones = 0
		end

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

	def getNivel
		return @nivel
	end

	def getCantOperaciones
		return @cantOperaciones
	end

	def setNum1(num1)
		@num1 = num1.to_i
	end

	def setNum2(num2)
		@num2 = num2.to_i
	end

end
