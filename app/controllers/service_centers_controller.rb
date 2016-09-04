class ServiceCentersController < ApplicationController
  before_action :set_service_center, only: [:show, :update, :destroy]

  # GET /service_centers
  def index
    @service_centers = ServiceCenter.all

    render json: @service_centers
  end

  # GET /service_centers/1
  def show
    render json: @service_center
  end

  # POST /service_centers
  def create
    @service_center = ServiceCenter.new(service_center_params)

    if @service_center.save
      render json: @service_center, status: :created, location: @service_center
    else
      render json: @service_center.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /service_centers/1
  def update
    if @service_center.update(service_center_params)
      render json: @service_center
    else
      render json: @service_center.errors, status: :unprocessable_entity
    end
  end

  # DELETE /service_centers/1
  def destroy
    @service_center.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_center
      @service_center = ServiceCenter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_center_params
      params.require(:service_center).permit(:service_name, :service_address, :service_address_second, :service_city, :service_state, :service_zip, :service_phone, :service_email, :service_bio)
    end
end
