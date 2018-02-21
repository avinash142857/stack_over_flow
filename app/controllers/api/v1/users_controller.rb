module api
	module v1
		class UsersController < ApplicationController
		   
		def show
			render json: 
		end

		def create
			user = User.new(user_params.except(:password).to_h)
			user.set_encrypted_password(user_params[:password])
			user.save!
		end

		private

		def user_params
      params.require(:user).permit(:name, :email, :password)
    end

end
