class ProductionsController < ApplicationController
    def index
        byebug
        render json: Production.all, status: :ok
    end 
end
