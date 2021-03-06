class Beer < ActiveRecord::Base
	include RatingAverage
	
	validates :name, length: { minimum: 1 }
	
	belongs_to :brewery
	has_many :ratings, dependent: :destroy
	has_many :users, through: :ratings

	def to_s
		"#{name} - #{brewery.name}" 
	end
end
