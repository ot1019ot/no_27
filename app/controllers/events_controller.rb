class EventsController < ApplicationController
	before_action :authenticate_admin!, except: [:index]


  def index
  	@events = Event.all.order(event_date: "ASC")
  end

  def new
  	@event = Event.new
  end

  def create
  	@event = Event.new(event_params)
  	@event.save
  	flash[:notice] = "新しいイベントを追加しました。"
  	redirect_to events_path
  end

  def destroy
  	@event = Event.find(params[:id])
  	@event.destroy
  	flash[:notice] = "イベントを削除しました。"
  	redirect_to events_path
  end

  def edit
  	@event = Event.find(params[:id])
  end

  def update
  	@event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to events_path
  end


private

	def event_params
		params.require(:event).permit(:event_name, :event_address, :event_date)
	end

end

