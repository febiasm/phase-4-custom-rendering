class CheesesController < ApplicationController

  # GET /cheeses
  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  # GET /cheeses/:id
  def show
    cheese = Cheese.find_by(id: params[:id])
    if cheese 
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese
    else 
      render json:{error: '404 not found'}, status: 404
    end
  end

end
