class HomeController < ApplicationController
	def index

		@category_id = params[:category_id]
		@city_id = params[:city_id]

		@properties = Property.where(nil)

		@properties = @properties.category(params[:category_id]) if @category_id.present?
		@properties = @properties.city(params[:city_id]) if params[:city_id].present?
		@term = params[:term]
		@properties = @properties.where("description LIKE ?", "%#{@term}%")

		@category = Category.find(params[:category_id]) if params[:category_id].present?
		@categories = Category.all()
		
	end

	def show
		@message = Message.new
		@property = Property.find(params[:id])
		@photo = Photo.new
		@categories = Category.all()
		@propertiesCount = Property.count
		@photos  = @property.photos.order(:sort)

	end

end


	

