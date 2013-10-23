class UsersController < ApplicationController
	skip_before_filter :authorize, only: [:new, :create]

	def verify_user
		redirect_to user_path(current_user.id) unless params[:id] == current_user.id
	end
	
	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(params[:user])
		if @user.errors.empty?
			sign_in(@user)
			redirect_to user_path(@user.id)
		else
			flash[:errors] = @user.errors.full_messages
			render :new
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end




end
