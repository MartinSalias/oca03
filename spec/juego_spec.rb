require "./lib/juego.rb"

describe "Juego" do

	it "Suma correcta" do
		juego = Juego.new(2,3,"+")
		juego.validarResultado(5).should == true
	end

	it "Suma incorrecta" do
		juego = Juego.new(2,3,"+")
		juego.validarResultado(4).should == false
	end		
end
