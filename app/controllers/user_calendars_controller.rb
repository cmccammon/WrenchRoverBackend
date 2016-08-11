class UserCalendarsController < ApplicationController
  before_action :set_user_calendar, only: [:show, :update, :destroy]

  # GET /user_calendars
  def index
    @user_calendars = UserCalendar.all

    render json: @user_calendars
  end

  # GET /user_calendars/1
  def show
    render json: @user_calendar
  end

  # POST /user_calendars
  def create
    @user_calendar = UserCalendar.new(user_calendar_params)

    if @user_calendar.save
      render json: @user_calendar, status: :created, location: @user_calendar
    else
      render json: @user_calendar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_calendars/1
  def update
    if @user_calendar.update(user_calendar_params)
      render json: @user_calendar
    else
      render json: @user_calendar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_calendars/1
  def destroy
    @user_calendar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_calendar
      @user_calendar = UserCalendar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_calendar_params
      params.require(:user_calendar).permit(:user_appointment, :service_quote_id)
    end
end
