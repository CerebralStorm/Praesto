class WorkoutsController < ApplicationController
  respond_to :json

  def index
    respond_with Workout.all
  end

  def show
    respond_with Workout.find(params[:id])
  end

  def create
    respond_with workout = Workout.create(workout_params)
  end

  def update
    respond_with Workout.update(params[:id], workout_params)
  end

  def destroy
    respond_with Post.destroy(params[:id])
  end

  private

  def workout_params
    permitted_params = [:id, :location, :date]
    params.require(:workout).permit(permitted_params)
  end

end
