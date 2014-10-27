class UsersController < ApplicationController 
	def spotify
		spotify_user = RSpotify::User.new(request.env['omniauth.auth'])

		render :plain => spotify_user.email

	end

end
