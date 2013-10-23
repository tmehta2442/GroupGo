class EntriesController < ApplicationController
	def index
		@entries = Entry.all
	end

	def create
		if params[:email]
			puts "*"*50
			p params
		end
		entry = Entry.create( where_to: params[:where_to], what_for: params[:what_for])
		#@emails = Group.create( emails: params[:entry] )
		redirect_to entry_path(entry.id)
	end

	def show
		@entry = Entry.find(params[:id].to_i)
		@groups = @entry.groups
	end

end
