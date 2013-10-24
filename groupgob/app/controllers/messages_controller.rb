class MessagesController < ApplicationController
	def submit
		@message = Message.create(message: params[:message])
	end
end
