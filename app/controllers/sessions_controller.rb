require 'pry'

class SessionsController < ApplicationController

    skip_before_action :authorized, only: [:create]

    def create
        user = User.find_by(email: session_params[:email])
    
        if user && user.authenticate(session_params[:password])
            token = encode_token({user_id: user.id})
            render json: { status: 'Success', user: UserSerializer.new(user), token: token}
        else
            render json: { status: 'Failed', msg: 'Email or Password are incorrect. Please try again.'}
        end
    end

    private

    def session_params
        params.require(:user).permit(:email, :password)
    end
end
