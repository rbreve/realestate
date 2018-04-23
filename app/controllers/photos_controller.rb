class PhotosController < ApplicationController
   before_action :set_photo, only: [:show, :edit, :update, :destroy]

	def new
   		@photo = Photo.new
 	end

 	def destroy
 		@property = Property.find(@photo.property_id)

	    @photo.destroy

	    respond_to do |format|
	      format.html { redirect_to @property, notice: 'Photo was successfully destroyed.' }
	      format.json { head :no_content }
	    end
  	end

 	def create

 		params[:photo][:image].each { |img|
 			 @photo = Photo.new()
 			 @photo.image = img
 			 @photo.property_id = params[:photo][:property_id]
 			 @photo.save
 		}
 		
 		@property = Property.find(params[:photo][:property_id])

		respond_to do |format|
			format.html { redirect_to @property, notice: 'Foto fue agregada con exito' }
			format.json { render :show, status: :created, location: @property }
		 end
    end
	 
	def update
	  @photo.update!(photo_params)
	  render json: @photo
	end

	private

    def set_photo
      @photo = Photo.find(params[:id])
    end

	def photo_params
	  params.require(:photo).permit(:image, :description, :property_id)
 	end
end
