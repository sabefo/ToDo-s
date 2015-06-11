class View

	def print(list)
		puts "-" * 42
		puts "Bienvenido a tu lista de cosas por hacer"
		puts "-" * 42
		puts "Estas son las cosas que tienes por hacer:"
		puts
		index(list.length, list)
	end

	def to_s(list)
		list.each{  |item|
			puts item
		}
	end

	private
		def index(n, list)
			for i in 1..n
				if list[i - 1][-1] == " "
					puts "#{i}. [X] #{list[i - 1]}"
				else
					puts "#{i}. [ ] #{list[i - 1]}"
				end
			end
			puts
		end
end