class ToDos

	attr_accessor :list

	def initialize
		@list = []
	end

	def add_item(item)
		@list << item
	end

	def delete_item(item)
		@list.delete(item)
	end

	def update_item(index, item)
		@list[index] = item
	end

	def to_s
		@list.each{  |item|
			puts item
		}
	end
end


#===================================================
#AQUI VA LA VISTA

list = ToDos.new
puts "-" * 42
puts "Bienvenido a tu lista de cosas por hacer"
puts "-" * 42
puts "Estas son las cosas que tienes por hacer:"
list.to_s
puts
puts "¿Quieres agregar algo?"
answer = gets.chomp
while answer != "no"
	puts "¿Qué quieres agregar?"
	new_item = gets.chomp
	puts "Agregaste #{new_item}"
	list.add_item(new_item.capitalize)
	puts "Tu lista quedó así:"
	list.to_s
	puts "¿Quieres agregar algo más?"
	answer = gets.chomp
end















