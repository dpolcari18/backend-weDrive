require 'pry'

class UsersController < ApplicationController
    # skip authentication when signing up
    skip_before_action :authorized, only: [:create]

    def create
        user = User.new(user_params)

        # check to see if user_params pass validations
        if user.save
            render json: { status: 'Success', msg: 'Thank you for signing up. Please sign in!' }
        else
            render json: { status: 'Failed', msg: user.errors.full_messages }
        end
    end

    private 

    def user_params
        params.require(:user).permit(:first_name, :last_name, :email, :phone, :password)
    end
end
