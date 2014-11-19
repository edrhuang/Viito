class UsersController < ApplicationController 
	# before_action :is_authenticated?

	def index 
	end

	def show

		@user = User.find_by_id(params[:id])
		
		# @songs = @user.rsuser.playlists[3].tracks

		# binding.pry
	end

	def get_songs 
		idx = params[:playlist_id].to_i
		@p_title = current_user.playlists[idx].name
		# binding.pry
		@songs = current_user.playlists[idx].tracks
		render json: @songs

		
		@first_pl = current_user.playlists[0]
		@singer = @first_pl.tracks[0].artists[0].name

		# binding.pry

		 
	end

	def get_echonest 
		foo = params[:artist_name]
		@rec = Echowrap.playlist_basic(:artist => params[:artist_name] , :results => 25)
		# params[:random_name]
		render json: @rec
		# binding.pry
	end






end
