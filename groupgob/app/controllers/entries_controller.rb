class EntriesController < ApplicationController
	def index
		@entries = current_user.entries
	end

	def create

		if params[:email]
			puts "*"*50
			#p params
		end
		entry = current_user.entries.create( where_to: params[:where_to], what_for: params[:what_for])
		#@emails = Group.create( emails: params[:entry] )
		redirect_to entry_path(entry.id)
	end

	def show
		@entry = current_user.entries.find(params[:id].to_i)
		@groups = @entry.groups
	end

	def submit
		entry = current_user.entries.find(params[:entry_id])
		puts "**"*50
		#p entry


		entry.groups.each do |group|
			GroupMailer.friend_send(group.email).deliver
		end

		redirect_to entry_path(entry.id)
	end



end

