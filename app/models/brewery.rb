class Brewery < ActiveRecord::Base
	include RatingAverage
	
	validates :name, length: { minimum: 1 }
	validates :year, numericality: { only_integer: true, greater_than_or_equal_to:1042, smaller_than:2016  }
	
	has_many :beers, dependent: :destroy
	has_many :ratings, through: :beers
end
