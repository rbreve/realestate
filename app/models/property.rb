class Property < ApplicationRecord
  belongs_to :neighborhood
 
  belongs_to :category, counter_cache: true
  belongs_to :city
  belongs_to :state
  has_many :photos  


  CURRENCY = ["Lps", "$"]

  scope :category, -> (category_id) { where category_id: category_id }
  scope :city, -> (city_id) { where city_id: city_id }


def self.search(term, page)
  if term
    where('description LIKE ?', "%#{term}%").paginate(page: page, per_page: 5).order('id DESC')
  else
    paginate(page: page, per_page: 5).order(created_at: :desc)
  end
end

end

