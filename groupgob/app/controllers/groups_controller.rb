class GroupsController < ApplicationController
	def create
		@emails = current_user.entries.find(params[:entry_id]).groups.create( email: params[:email] )
		# GroupMailer.friend_send(Group.last.email).deliver
		render nothing: true, status: 200
	end

end
