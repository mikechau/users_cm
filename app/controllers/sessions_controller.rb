class SessionsController < ApplicationController

	def new
	end

	def create

		user = User.find_by_email(params[:email])

		if user != nil && user.authenticate(params[:password])
			session[:user_id] = user.id	
			redirect_to users_url
		else
			redirect_to new_session_url
		end

	end

	def destroy
		session[:user_id] = nil
		redirect_to users_url
	end

end
