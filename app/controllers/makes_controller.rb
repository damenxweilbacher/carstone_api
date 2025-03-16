class MakesController < ApplicationController
  def index # use get
    makes = Make.all 
    render json: makes
  end

  def show # use get
    make = Make.find(params[:id]) #dynamic
    puts "<><><><><>"
    puts params[:id]
    puts "<><><><><>"
    render json: make
  end

  def create # use post
   make = Make.create(company:
    params[:company], region:params[:region]) #dynamic     
    render json: make
  end

  def update # use put or patch
   make = Make.find(params[:id]) # dynamic
   make.update(company:
    params[:company], region:params[:region]
    )
    render json: make
  end
  
  def destroy # use delete
   make = Make.find(params[:id]) # dynamic
   make.destroy
    render :no_content
  end
end
