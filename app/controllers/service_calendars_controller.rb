class ServiceCalendarsController < ApplicationController
  before_action :set_service_calendar, only: [:show, :update, :destroy]

  # GET /service_calendars
  def index
    @service_calendars = ServiceCalendar.all

    render json: @service_calendars
  end

  # GET /service_calendars/1
  def show
    render json: @service_calendar
  end

  # POST /service_calendars
  def create
    @service_calendar = ServiceCalendar.new(service_calendar_params)

    if @service_calendar.save
      render json: @service_calendar, status: :created, location: @service_calendar
    else
      render json: @service_calendar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /service_calendars/1
  def update
    if @service_calendar.update(service_calendar_params)
      render json: @service_calendar
    else
      render json: @service_calendar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /service_calendars/1
  def destroy
    @service_calendar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_calendar
      @service_calendar = ServiceCalendar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_calendar_params
      params.require(:service_calendar).permit(:service_appointment, :user_id)
    end
end
