class UsersController < ApplicationController 
	# before_action :is_authenticated?

	def index 
		
	end

	def spotify
		spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
		# render :json => spotify_user.playlists
		# flash[:notice] = "You are now logged in with Spotify"
		hash = spotify_user.to_hash
		email = hash["email"]
		
		#searches db for existing email, returrns Users object
		check_user = User.find_by email: email 

		if check_user == nil
			@user = User.new(s_hash: hash, email: email )
			@user.save
			session[:current_user_id] = @user.id
			flash[:notice] = "Welcome to Viito, #{@user.s_hash["display_name"]}"
		else 
			session[:current_user_id] = check_user.id
			flash[:notice] = "Welcome to Viito, #{check_user.s_hash["display_name"]}"
		end

		redirect_to root_url

	end



end
