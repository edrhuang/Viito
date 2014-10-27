class UsersController < ApplicationController 
	def spotify
		spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
		render :plain => spotify_user.email

		hash = spotify_user.to_hash
	end

	def create 

	end


end
