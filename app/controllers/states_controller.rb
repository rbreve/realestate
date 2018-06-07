class StatesController < ApplicationController
	  before_action :set_state, only: [:show, :edit, :update, :destroy]

	def index
		@states = State.all
    @state = State.new
	end

	  # GET /cities/new
  def new
    @state = State.new
  end

	def destroy
    @state.destroy
    respond_to do |format|
      format.html { redirect_to states_url, notice: 'City was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

 
  def create
    @state = State.new(state_params)

    respond_to do |format|
      if @state.save
        format.html { redirect_to states_url, notice: 'Status was successfully created.' }
        format.json { render :show, status: :created, location: @state }
      else
        format.html { render :new }
        format.json { render json: @state.errors, status: :unprocessable_entity }
      end
    end
  end

 private
    # Use callbacks to share common setup or constraints between actions.
    def set_state
      @state = State.find(params[:id])
    end

    def state_params
      params.require(:state).permit(:name)
    end


    

end
