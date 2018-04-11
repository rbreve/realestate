class Photo < ApplicationRecord
	belongs_to :property
	has_attached_file :image, styles: { medium: "800x800>", thumb: "250x250>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
