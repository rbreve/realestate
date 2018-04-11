# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Departamentos = [
"Atlántida",
"Choluteca",
"Colón",
"Comayagua",
"Copán",
"Cortés",
"El Paraíso",
"Francisco Morazán",
"Gracias a Dios",
"Intibucá",
"Islas de la Bahía",
"La Paz",
"Lempira",
"Ocotepeque",
"Olancho",
"Santa Bárbara",
"Valle",
"Yoro"
 ]

 Cities = [
"Tegucigalpa",
"San Pedro Sula",
"Choloma",
"El Progreso",
"Choluteca",
"Comayagua",
"Puerto Cortés",
"La Lima",
"Juticalpa",
"Comayaguela",
"Roatan",
"Tocoa",
"Gracias",
"Tela",
"Intibucá",
"Trujillo",
"Valle",
"Siguatepeque"
 ]



Categories = [
"Alquiler Casas",
"Alquiler Apartamentos",
"Alquiler Locales y Edificios",
"Alquiler Bodegas",
"Alquiler Terrenos",
"Venta Terrenos",
"Venta TErrenos Comerciales",
"Ventas Locales Comerciales ",
"Venta de Edificios",
"Venta de Apartamentos",
"Venta de Bodegas",
"Venta de Propiedades Rurales",
"Venta de Terrenos de Playa"
]

Cities.each do |name|
	City.create(name: name)
end

# Departamentos.each do |name|
# 	State.create(name: name)
# end

# Categories.each do |name|
# 	Category.create(name: name)
# end

