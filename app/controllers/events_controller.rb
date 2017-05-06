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
      redirect_to events_url, notice: t('messages.created', model: Event.model_name.human)
    else
      render :new
    end
  end

  def update
    if @event.update(event_params)
      redirect_to events_url, notice: t('messages.updated', model: Event.model_name.human)
    else
      render :edit
    end
  end

  def destroy
    @event.destroy
    redirect_to events_url, notice: t('messages.destroyed', model: Event.model_name.human)
    else
  end

  private
    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:name, :start_at, :end_at, :url, :place_name, :memo)
    end
end
