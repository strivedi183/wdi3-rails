class ExercisesController < ApplicationController
  def index
    @exercises = @auth.exercises
    @activities = @exercises.map(&:activity).uniq.sort
  end
  def new
    @exercise = Exercise.new
  end
  def create
    exercise = Exercise.create(params[:exercise])
    @auth.exercises << exercise
    @exercises = @auth.exercises
    @activities = @exercises.map(&:activity).uniq.sort
    respond_to do |format|
      format.html { redirect_to(exercises_path) }
      format.js
    end
  end
  def chart
    render :json => @auth.exercises.where(:activity => params[:activity])
  end

end