class WorkoutsController < ApplicationController
  respond_to :json

  def index
    respond_with Workout.all
  end

  def show
    # respond_with Workout.find(workout_params)
  end

  def create
    # workout = Workout.create(workout_params)
    # if workout.save
    #   render json: workout, status: :created
    # else
    #   respond_with json: workout
    # end
  end

  def update
    # workout = Workout.find(workout_params)
    # if workout.update_attributes(workout_params)
    #   render json: workout, status: :updated
    # else
    #   respond_with json: workout
    # end
  end

  def destroy
  end

  private

  def workout_params
    permitted_params = [:id, :location, :date]
    params.require(:workout).permit(permitted_params)
  end

end
