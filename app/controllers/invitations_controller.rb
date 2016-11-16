class InvitationsController < ApplicationController
	def new
		@invitation= Invitation.new
	end

	def create
		@invitation = Invitation.new(params_invitation)
		if @invitation.save
			session[:invitation_id] = @invitation.id
			#binding.pry
			# @user = User.find_by_id(params[:user_id])
      		redirect_to home_path
		else
			redirect_to invitation_new_path
		end
	end

	private
	def params_invitation
		params.require(:invitation).permit(:event_id,:invitee_id,:inviter_id,:user_id:,:invitation_id)
	end
end
