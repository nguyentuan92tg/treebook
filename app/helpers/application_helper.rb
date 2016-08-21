module ApplicationHelper
	
	def flash_class(type)
		case type
		when "alert"
			puts "true"
		when "notice"
			"alert-success"
		else
			""
		end
	end
end
