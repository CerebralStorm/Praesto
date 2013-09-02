class ActivitiesController < ApplicationController
  respond_to :json

  def index
    respond_with Activity.all
  end

  def show
    respond_with Activity.find(params[:id])
  end

  def create
    respond_with activity = Activity.create(activity_params)
  end

  def update
    respond_with Activity.update(params[:id], activity_params)
  end

  def destroy
    respond_with Activity.destroy(params[:id])
  end

  private

  def activity_params
    permitted_params = [:id, :name, :workout_id]
    params.require(:workout).permit(permitted_params)
  end
end
