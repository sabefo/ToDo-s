require "csv"
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

	def create_csv
		CSV.open("To Do's.csv","w")
	end

	def read_csv
		@list = CSV.read("To Do's.csv", "r")
	end

	# def modify_csv
	# 	CSV.open("To Do's.csv","w") do |csv|
	# 		@list.each{  ||

	# 		}
	# 			csv << ["sa","cancion"]
	# 	end		
	# end

	def manage_file
		begin
			read_csv
		rescue
			create_csv
		end
	end
end



#===================================================
#AQUI VA LA VISTA

list = ToDos.new
#list.create_csv
#list.read_csv
list.manage_file
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















