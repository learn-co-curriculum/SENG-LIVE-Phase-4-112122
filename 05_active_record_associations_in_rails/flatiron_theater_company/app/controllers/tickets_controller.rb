class TicketsController < ApplicationController
    def index 
        render  json: Ticket.all, status: :ok
    end 
    
    def show
        render json: Ticket.find(params[:id]),status: :ok
    end 

    def create
        ticket = Ticket.create!(ticket_params)
        render json: ticket, status: :created
    end 

    private

    def ticket_params
        params.permit(:price, :production_id, :user_id)
    end 
end
