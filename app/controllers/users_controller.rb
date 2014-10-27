class UsersController < ApplicationController 
	def spotify
		spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
		render :plain => spotify_user.email

		hash = spotify_user.to_hash
	end

	def index 
		
	end


	def create 
		@user = User.new user params

		if @user.save
			redirect_to user_path(:id)
		else
			render :index
		end

	end



	private 
	def user_params 
		params.require(:user).permit(
			:s_hash
		)
	end



end
