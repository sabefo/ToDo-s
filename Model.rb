require "csv"
class Model

	attr_accessor :list

	def initialize
		@list = []
	end

	def add_item(item)
		@list << item
		update_csv
	end

	def delete_item(item)
		p "Estoy recibiendo #{item}"
		p "la lista es: #{@list}"
		@list.delete_at(item)
		p "la lista es: #{@list}"

		update_csv
	end

	def update_item(index, item)
		@list[index] = item
		update_csv
	end

	def create_csv
		CSV.open("To Do's.csv","w")
	end

	def read_csv
		p "Estamos leyendo"
		@list = CSV.read("To Do's.csv", "r")
		P "largo de la lista: #{@list.length}"
		for i in 0...@list.length
			p "Elemento #{i} de la @list: #{@list[i]}"
			@list << @list[i]
		end
		p "Estamos leyendo el archivo, esto es lo que tenemos: #{@list}"
	end

	def update_csv
		@list.flatten!
		CSV.open("To Do's.csv","w") do |csv|
			@list.each{  |value|
				csv << [value]
			}
		end
	end

	def manage_file
		begin
			read_csv
		rescue
			create_csv
		end
	end
end











