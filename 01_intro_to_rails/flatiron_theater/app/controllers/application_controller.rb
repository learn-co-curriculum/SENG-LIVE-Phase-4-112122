class ApplicationController < ActionController::API

    def welcome
        render json: {hi:'hello world'}
    end 

    def name
        render json: {hi: "hi #{params[:name]}"}
    end 
end
