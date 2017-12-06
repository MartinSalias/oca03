require "./lib/juego.rb"

describe "Juego" do

	it "empieza juego" do
			juego = Juego.new(2,3,"+")
			juego.validarResultado(5).should == true
	end

end
