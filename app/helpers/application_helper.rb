module ApplicationHelper
	def flash_display
	  response = ""
	  flash.each do |name, msg|
	    response = response + content_tag(:div, msg, class: "flashbox", id: "flash_#{name}")
	  end
	  flash.discard
	  response
	end
end
