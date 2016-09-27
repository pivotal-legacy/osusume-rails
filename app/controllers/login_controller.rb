class LoginController < ApplicationController
    def authenticate

        if User.authenticate(params[:name], params[:password])
            render json: {token: "danny"}
        else
            render status: 401, json: {}
        end
    end
end
