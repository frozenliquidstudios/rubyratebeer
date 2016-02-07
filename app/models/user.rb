class User < ActiveRecord::Base
	include RatingAverage
	
	validates :username, uniqueness: true,
						 length: { minimum: 3, maximum: 15 }
	validates :password, :format => {:with => /\A(?=.*[A-Z])(?=.*[0-9]).{4,}\z/}
	
	has_secure_password
	has_many :ratings, dependent: :destroy
	has_many :beers, through: :ratings
end