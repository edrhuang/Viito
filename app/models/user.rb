class User < ActiveRecord::Base
	# saving hash as text
	serialize :s_hash, Hash
	#returns text to hash 
end
