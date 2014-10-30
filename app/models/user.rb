class User < ActiveRecord::Base
	# saving hash as text
	serialize :s_hash, Hash
	#returns text to hash

	def name
		self.rsuser.display_name
	end

	def spotify_id 
		self.rsuser.id
	end

	def playlists()
		self.rsuser.playlists
	end

	def image 
		self.rsuser.images
	end

	# private

	def rsuser
		RSpotify::User.new(self.s_hash)
	end

end
