class HomeController < ApplicationController
	def index

		if params[:id].present?
			@category = Category.find(params[:id])
			@properties = Property.where("category_id = ?", params[:id])
		else
			@properties = Property.last(5)
		end
		
		@categories = Category.all()
		
	end

	def show
		@property = Property.find(params[:id])
		@photo = Photo.new
		@categories = Category.all()

	end

end


	

