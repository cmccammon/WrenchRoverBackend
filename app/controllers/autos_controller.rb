class AutosController < ApplicationController
  before_action :set_auto, only: [:show, :update, :destroy]

  # GET /autos
  def index
    @autos = Auto.all

    render json: @autos
  end

  # GET /autos/1
  def show
    render json: @auto
  end

  # POST /autos
  def create
    @auto = Auto.new(auto_params)

    if @auto.save
      render json: @auto, status: :created, location: @auto
    else
      render json: @auto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /autos/1
  def update
    if @auto.update(auto_params)
      render json: @auto
    else
      render json: @auto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /autos/1
  def destroy
    @auto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_auto
      @auto = Auto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def auto_params
      params.require(:auto).permit(:year, :make, :model, :trim, :engine, :mileage, :user_id, :service_request_id)
    end
end
