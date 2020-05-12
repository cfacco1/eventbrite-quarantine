class EventsController < ApplicationController
   before_action :authenticate_user!, only: [:new, :create, :show]
   
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end


  def create
  end

  def update
  end

  def edit
  end

  def new
  end
end
