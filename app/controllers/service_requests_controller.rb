class ServiceRequestsController < ApplicationController
  before_action :set_service_request, only: [:show, :update, :destroy]


  def index
    @service_requests = ServiceRequest.where('created_at > ?', 14.days.ago)

    render json: @service_requests
  end

  def userid
    @service_requests_profile = ServiceRequest.where(user_id: params[:id])

    render json: @service_requests_profile
  end

  #GET /service_requests_dash/1
  def scid
    @service_requests_dash = ServiceRequest.last

    render json: @service_requests_dash
  end


  # GET /service_requests/1
  def show
    render json: @service_request
  end

  # POST /service_requests
  def create
    @service_request = ServiceRequest.new(service_request_params)

    if @service_request.save
      #send Email

      render json: @service_request, status: :created, location: @service_request
    else
      render json: @service_request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /service_requests/1
  def update
    if @service_request.update(service_request_params)
      render json: @service_request
    else
      render json: @service_request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /service_requests/1
  def destroy
    @service_request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_request
      @service_request = ServiceRequest.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_request_params
      params.require(:service_request).permit(:work_request, :user_id, :description, :auto_id, :selected_date)
    end
end
