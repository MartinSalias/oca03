Feature: Juego

Scenario: Portada
	Given Voy al sitio
	Then veo "Bienvenido a MateKids"

Scenario: Primer juego
	Given Voy al sitio
	When ingresa 4
	Then veo ok
