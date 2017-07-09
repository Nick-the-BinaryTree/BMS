class BananasController < ApplicationController
  before_action :set_banana, only: [:show, :update, :destroy]

  # GET /bananas
  def index
    @bananas = Banana.all

    render json: @bananas
  end

  # GET /bananas/1
  def show
    render json: @banana
  end

  # POST /bananas
  def create
    @banana = Banana.new(banana_params)

    if @banana.save
      render json: @banana, status: :created, location: @banana
    else
      render json: @banana.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bananas/1
  def update
    if @banana.update(banana_params)
      render json: @banana
    else
      render json: @banana.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bananas/1
  def destroy
    @banana.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banana
      @banana = Banana.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def banana_params
      params.require(:banana).permit(:name, :location)
    end
end
