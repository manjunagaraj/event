class User < ActiveRecord::Base
	
	has_many :events,foreign_key: :owner_id
end
