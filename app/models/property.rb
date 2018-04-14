class Property < ApplicationRecord
  belongs_to :neighborhood
 
  belongs_to :category, counter_cache: true
  belongs_to :city
  belongs_to :state
  has_many :photos  


  CURRENCY = ["Lps", "$"]

end

