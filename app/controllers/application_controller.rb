class ApplicationController < ActionController::Base
	
	Dotenv.load 

	RSpotify.authenticate(ENV["SPOTIFY_ID"], ENV["SPOTIFY_SECRET"])




	# binding.pry
end
