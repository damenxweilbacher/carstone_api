class CarsController < ApplicationController
  before_action :authorize_request
  def index # use get
    cars = policy_scope(Car)
    render json: cars
  end

  def show # use get
    car = Car.find(params[:id]) #dynamic
    authorize car  # calls CarPolicy#show?
    render json: car
  end

  def create # use post
    car = Car.new(model:params[:model], year:params[:year],make_id:params[:make_id],  user_id: current_user.id)    
    
    authorize car  # calls CarPolicy#create?

    if car.save
      render json: car, status: :created
    else
      render json: { errors: car.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update # use put or patch
    car = Car.find(params[:id]) #dynamic
    authorize car  # calls carPolicy#update?

    if car.update(model: params[:model], year: params[:year],make_id: params[:make_id])
      render json: car
    else
      render json: { errors: car.errors.full_messages }, status: :unprocessable_entity
    end 
  end
  
  def destroy # use delete
    car = Car.find(params[:id]) # dynamic
    authorize car  # calls CarPolicy#destroy?

    car.destroy
    render json: { message: 'Car has been deleted.' }, status: :ok
  end
end
