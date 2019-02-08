class EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]
  has_scope :nome

  # GET /events
  def index
     @events = apply_scopes(Event).all
     render json: @events
  end

  # GET /events/1
  def show
    render json: @event
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def event_params
      params.require(:event).permit(:nome)
    end
end
