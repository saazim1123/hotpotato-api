class Api::V1::AuthController < ApplicationController

    def create
        user = User.find_by(email: user_login_params[:email])
        if user && user.authenticate(user_login_params[:password])
            render json: { user: UserSerializer.new(user), token: encode_token(user_id: user.id) }, status: :accepted
        else
            render json: { message: 'Invalid email or password' }, status: :unauthorized
        end
    end

    
    def validate_token 
        user = User.decode_token(get_token)
        if user 
            render json: { user: UserSerializer.new(user), token: encode_token(user_id: user.id) }, status: :accepted
        else
            render json: { message: 'User not found' }, status: :not_found
        end
    end



    def show
        # byebug
    # token = request.headers['Authorization']
    # user = User.find_by(id: token)
    #  if user
    #   render json: user
    #  else
    #   render({json: {error: 'Invalid token'}, status: 401})
    #  end

    end

end