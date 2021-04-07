class ApplicationController < ActionController::API
    before_action :authorized

    def encode_token(payload)
        JWT.encode(payload, ENV['SECRET'], 'HS256')
        
    end

    def auth_header
        request.headers['Authorization']
    end

    def decoded_token
        if auth_header
            token = auth_header.sple(' ')[1]
            begin 
                JWT.decode(token, ENV['SECRET'], true, algorithm: 'HS256')
            rescue
                nil
            end
        end
    end 

    def current_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            @user = User.find_by(id: user_id)
        end
    end

    def logged_in?
        !!current_user
    end

    def authorized
        render json: { message: 'Please log in to access this page.' }, status: :unauthorized unless logged_in?
    end

end
