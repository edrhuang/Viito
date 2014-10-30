class UsersController < ApplicationController 
	# before_action :is_authenticated?

	def index 
	end

	def show

		@user = User.find_by_id(params[:id])
		
		
		@songs = @user.rsuser.playlists[3].tracks

		# binding.pry
	end

	def get_songs 
		idx = params[:playlist_id].to_i
		
		# @p_title = current_user.playlists[idx].name
		# binding.pry
		@songs = current_user.playlists[idx].tracks
		render json: @songs
	end



end
