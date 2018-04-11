class Neighborhood < ApplicationRecord
	def self.search(term)
		where('LOWER(name) LIKE :term', term: "%#{term.downcase}%")
	end

	def to_s
		self.name
	end
	
	has_many :properties
end
