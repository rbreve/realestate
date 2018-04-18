class Property < ApplicationRecord
  belongs_to :neighborhood
 
  belongs_to :category, counter_cache: true
  belongs_to :city
  belongs_to :state
  has_many :photos  


  CURRENCY = ["Lps", "$"]

  scope :category, -> (category_id) { where category_id: category_id }
  scope :city, -> (city_id) { where city_id: city_id }

end

