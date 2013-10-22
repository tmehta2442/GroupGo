class EntriesController < ApplicationController
	def index
		@entries = Entry.all
	end

	def create
		entry = Entry.create( where_to: params[:where_to], what_for: params[:what_for])
		redirect_to entry_path(entry.id)
	end

	def show
		@entry = Entry.find(params[:id].to_i)
	end

end
