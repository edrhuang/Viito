class SessionsController < ApplicationController 

	def create
		@user = User.find_by :id => params[:id]

		if @user.nil? 
			# redirect to spotify to confirm account
			user.spotify
			session[:current_user_id] = user.id
		end

	end
	
	def destroy 
		session[:current_user_id] = nil 
		flash[:notice] = "You have been logged out"

		redirect_to root_url
	end

end
