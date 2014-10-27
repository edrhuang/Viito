class SessionsController < ApplicationController 

	def create
		@user = User.find_by :s_id => params[:s_id]

		if @user.nil? 
			flash[:error] = "Cant login with Spotify"
		elsif @user.authenticate params
		
		end


		
	end
	
	def destroy 
		session[:current_user_id] = nil 
		flash[:notice] = "You have been logged out"

		redirect to root_path
	end

end
