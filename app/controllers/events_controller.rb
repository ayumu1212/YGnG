class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end


  def create
    @event = Event.new(event_params)
    if  @event.save
      redirect_to @event
    else
      render :new
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
  end

  def show
    def show
      @event = event.find(params[:id])
    end
  end

  def destroy
  end

private

  def customer_params
    params.require(:event).permit(
      :date_time,:member,:place,:part,:user_id,:description)
    end
  end
