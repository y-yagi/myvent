class EventsController < ApplicationController
  before_action :set_event, only: [:edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.build(event_params, current_user)

    if @event.save
      redirect_to events_url, notice: 'Event was successfully created.'
    else
      render :new
    end
  end

  def update
    if @event.update(event_params)
      redirect_to events_url, notice: 'Event was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_url, notice: 'Event was successfully destroyed.'
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :start_at, :end_at, :url, :place_name, :memo)
    end
end
