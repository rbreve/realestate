class HomeController < ApplicationController
	def index

		@category_id = params[:category_id]
		@city_id = params[:city_id]

		@properties = Property.where(nil)

		@properties = @properties.category(params[:category_id]) if @category_id
		@properties = @properties.city(params[:city_id]) if @city_id
		@category = Category.find(params[:category_id]) if @category_id

		 
		@categories = Category.all()
		
	end

	def show
		@property = Property.find(params[:id])
		@photo = Photo.new
		@categories = Category.all()
		@propertiesCount = Property.count
	end

end


	

