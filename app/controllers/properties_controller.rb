class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: "nimer", password: "nimer",  except: :show

  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.search(params[:term], params[:page])
    @term = params[:term]
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
    @photo = Photo.new
    @photos  = @property.photos.order(:sort)
  end

  # GET /properties/new
  def new
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
    @photo = Photo.new
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)

    n=Neighborhood.find_or_create_by(name: params[:neighborhood]) do |n|
      n.name = params[:neighborhood]
    end
    @property.neighborhood= n
     
    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update

    n=Neighborhood.find_or_create_by(name: params[:neighborhood]) do |n|
      n.name = params[:neighborhood]
    end
    @property.neighborhood= n

    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:name, :description, :state_id, :city_id, :neighborhood, :rooms, :category_id, :price, :currency)
    end
end
