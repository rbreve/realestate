class Property < ApplicationRecord
  belongs_to :neighborhood
  belongs_to :category
  belongs_to :city
  belongs_to :state
  has_many :photos  

  CURRENCY = ["Lps", "$"]

end

