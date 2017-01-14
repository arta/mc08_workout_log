class ExercisesController < ApplicationController

  # POST /workouts/:workout_id/:exercises
  #   <form action='/workouts/1/exercises', method='post' ..>
  #   =form_for [@workout, @workout.exercises.new] ..
  def create
    @workout = Workout.find params[:workout_id]
    @exercise = @workout.exercises.create exercise_params
    if @exercise.save
      redirect_to @workout, notice:'Exercise added.'
    else
      render 'workouts/show'
    end
  end
  # No view. Explicitly redirect_to|render action|view

  # DELETE /workouts/:workout_id/:exercises/:id
  #   =link_to .. [@workout, exercise], method: :delete
  def destroy
    exercise = Exercise.find params[:id]
    exercise.destroy
    redirect_to request.referer, notice:'Exercises deleted.'
  end
  # No view. Explicitly redirect_to action

  private
    def exercise_params
      params.require( :exercise ).permit( :name, :sets, :reps )
    end
end
