class User < ActiveRecord::Base

	validates :s_hash, presence: true
	validates :s_id, presence: true 

end
