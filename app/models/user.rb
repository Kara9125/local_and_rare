class User < ActiveRecord::Base
	has_many :reviews, dependent: :destroy
	
	has_secure_password

end
