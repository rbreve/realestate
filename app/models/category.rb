class Category < ApplicationRecord
	has_many :properties

	def to_s
		self.name
	end
end
