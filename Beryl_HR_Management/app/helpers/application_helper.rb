module ApplicationHelper
	def sortable(column, title = nil)
		title ||= column.titleize
		direction = column == params[:asc] && params[:direction] == "desc" ? "asc" : "asc"
		link_to title, :sort => column, :direction => direction		
	end
end
