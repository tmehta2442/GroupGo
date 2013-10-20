class EntriesController < ApplicationController
	
	def index
		@where_to = params[:where_to]
		@what_for = params[:what_for]
	end

end
