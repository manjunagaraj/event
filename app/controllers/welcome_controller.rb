class WelcomeController < ApplicationController
	def index
		def create
		end

	end

def destroy
		@user = User.find params[:id]
        @user.destroy
    	redirect_to '/login'
    
    	

	end

	
end
