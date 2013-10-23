class GroupsController < ApplicationController
	def create
		@emails = Entry.find(params[:entry_id]).groups.create( email: params[:email] )
		render nothing: true, status: 200
	end
end
