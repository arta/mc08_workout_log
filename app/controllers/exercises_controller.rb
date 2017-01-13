class ExercisesController < ApplicationController

  # POST /workouts/:workout_id/:exercises
  #   <form action='/workouts/1/exercises', method='post' ..>
  #   =form_for [@workout, @workout.exercises.new] ..
  def create
    @workout = Workout.find params[:workout_id]
    @exercise = @workout.exercises.create exercise_params
    redirect_to @workout, notice:'Exercise added.'
  end
  # No view. Explicitly redirect_to|render action|view

  private
    def exercise_params
      params.require( :exercise ).permit( :name, :sets, :reps )
    end
end
