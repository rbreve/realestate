class City < ApplicationRecord

	def to_s
		self.name
	end

	has_many :properties
end
