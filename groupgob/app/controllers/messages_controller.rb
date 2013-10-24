class MessagesController < ApplicationController
	def submit
		@message = Entry.find(params[:entry_id].to_i).messages.create(message: params[:message])
		redirect_to current_user
	end
end
