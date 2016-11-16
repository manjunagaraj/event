class EventsController < ApplicationController
	
def new
		@event = Eventt.new
	end


	def index
	@eventts=Eventt.all
end

	def create
		@event = Eventt.new(params_event)
		if @event.save
			session[:event_id] = @event.id
			
      		redirect_to events_list_path
		else
			redirect_to event_new_path
		end
	end




	def edit

	@event=Eventt.find_by_id(params[:id])
	
end

	def update
	#binding.pry
	@event=Eventt.find_by_id(params[:id])
	@event.update_attributes(params_event)
	redirect_to eventt_new_path


end



def destroy
	@event=Eventt.find_by_id(params[:id])
	
	@event.destroy

	redirect_to events_list_path
	end

	private
	def params_event
		params.require(:event).permit(:title,:venue,:date,:time,:description,:invitees,:status)
	end

	

	

	
end

    



