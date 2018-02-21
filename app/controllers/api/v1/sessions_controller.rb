class SessionsController < ApplicationController
	before_action :

	def create
		user = User.find_by(email: session_params[:email])
		if user && user.authenticated?(session_params[:password])
			create_session(user)
		end
	end 

	def destroy
		
	end 

	private

	def session_params
    params.require(:session).permit(:email, :password)
  end
end
