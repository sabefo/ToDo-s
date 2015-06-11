require_relative "View"
require_relative "Model"


class Controller

	attr_accessor :model, :view
	def initialize
		@model = Model.new
		@view = View.new
	end

	def manage(argument)
		case argument[0]
		when "index"
			@view.print(@model.list)
		when "add"
			word = argument.slice(1, argument.length - 1).join(" ")
			@model.add_item(word)				
			@view.print(@model.list)
		when "delete"
			number = argument[1]
			@model.delete_item(number.to_i)
			@view.print(@model.list)			
		when "complete"
		else
			@view.to_s(@model.list)
		end
	end
end




argument = ARGV

controller = Controller.new
controller.model.manage_file
#controller.model.add_item("hola")
#controller.model.add_item("adios")
#controller.model.list
controller.manage(argument)
#controller.view.print(controller.model.list)
# controller.model.update_csv
