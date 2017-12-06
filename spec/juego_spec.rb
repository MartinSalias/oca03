require "./lib/juego.rb"

describe "Juego" do

	it "empieza juego" do
			juego = Juego.new(2,2,"+")
			juego.validarResultado(4).should == true
	end

end
