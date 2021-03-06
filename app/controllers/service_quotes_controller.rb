class ServiceQuotesController < ApplicationController
  before_action :set_service_quote, only: [:show, :update, :destroy]

  # GET /service_quotes
  def index
    @service_quotes = ServiceQuote.all

    render json: @service_quotes
  end

  def quoetesbyscid
    @service_quotes_by_scid = ServiceQuotes.where(service_center_id: params[:id])

    render json: @service_quotes_by_scid
  end

  def accepted
    @accepted_quotes
    render json: @accepted_quotes
  end
  # GET /service_quotes/1
  def show
    render json: @service_quote
  end

  # POST /service_quotes
  def create
    @service_quote = ServiceQuote.new(service_quote_params)

    if @service_quote.save
      render json: @service_quote, status: :created, location: @service_quote
    else
      render json: @service_quote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /service_quotes/1
  def update
    if @service_quote.update(service_quote_params)
      render json: @service_quote
    else
      render json: @service_quote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /service_quotes/1
  def destroy
    @service_quote.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_quote
      @service_quote = ServiceQuote.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_quote_params
      params.require(:service_quote).permit(:service_request_id,
       :service_center_id, :quote_text, :quote_cost, :accepted, :available_date_1, :available_date_2, :available_date_3)
    end
end
