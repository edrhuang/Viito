class ApplicationController < ActionController::Base
	
	helper_method :current_user, :logged_in?
	
	Dotenv.load 

	RSpotify.authenticate(ENV["SPOTIFY_ID"], ENV["SPOTIFY_SECRET"])


	def current_user 
		@current_user ||= User.find(session[:current_user_id])
	end

	def is_authenticated?
		redirect_to root_url if session[:current_user_id].nil?
	end

	def logged_in?
		session[:current_user_id] != nil
	end




end
