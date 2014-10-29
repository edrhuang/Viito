class UsersController < ApplicationController 
	# before_action :is_authenticated?

	def index 
	end

	def show

		@user = User.find_by_id(params[:id])
		
		@p_title = @user.rsuser.playlists[3].name
		@songs = @user.rsuser.playlists[3].tracks

		# num = songs.length
		binding.pry

	end



end
