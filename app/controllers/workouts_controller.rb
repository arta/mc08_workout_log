class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  # GET /Workouts
  #   =link_to .. workouts_path
  def index
    @workouts = Workout.order created_at: :desc
  end
  # Automatically renders /workouts/index view with @workouts available

  # GET /workouts/new
  #   =link_to .. new_workout_path
  def new
    @workout = Workout.new
  end
  # Automatically renders /workouts/new view, which contains
  #   /workouts/_form partial, which contains
  #   =form_for @workout .. which generates ../new html page with
  #   <form action='/workouts', method='post' ..>     for @workout.new_record?
  #     <input name='workout[date]' ..>
  #     ...

  # POST /workouts
  #   from:       <form action='/workouts', method='post' ..>
  #   by:         =form_for @workout .. on /workouts/_form
  #   when true:  @workout.new_record?
  def create
    @workout = Workout.new workout_params
    if @workout.save
      redirect_to @workout, notice:'Workout created.'
    else
      render :new
    end
  end
  # No view. Explicitly redirect_to|render action|view

  # GET /workouts/:id
  #   redirect_to @workout | workout_path( @workout )
  #   =link_to .. @workout | workout_path( @workout )
  #   browse to the website.com/workouts/:id
  #   router extracts :id value from the request into params[:id]=value pair
  def show
  end
  # Automatically renders /workouts/show view with the identified @workout

  # GET workouts/:id/edit
  #   =link_to .. [:edit, @workout] | edit_workout_path( @workout )
  #   router extracts :id value from the request into params[:id]=value pair
  def edit
  end
  # Automatically renders /workouts/:id/edit view with the identified @workout
  #   which contains /workouts/_form partial which contains
  #   =form_for @workout .. which generates ../edit html page with
  #   <form action='/workouts/:id', method='patch' ..>  for @workout.persistant?
  #     <input name='workout[date]' ..>
  #     ...

  # PATCH|PUT /workouts/:id
  #   from:       <form action='/workouts/:id', method='patch' ..>
  #   by:         =form_for @workout .. on /workouts/_form
  #   when true:  @workout.persistent?
  #   router extracts :id value from the request into params[:id]=value pair
  def update
    if @workout.update workout_params
      redirect_to @workout, notice:'Workout updated.'
    else
      render :edit
    end
  end
  # No view. Explicitly redirect_to|render action|view

  # DELETE /workouts/:id
  #   =link_to .. @workout | workout_path( @workout )
  #   router extracts :id value from request into params[:id]=value pair
  def destroy
    @workout.destroy
    redirect_to workouts_path, notice:'Workout deleted.'
  end
  # No view. Explicitly redirect_to action

  private
    def set_workout
      @workout = Workout.find params[:id]
    end

    def workout_params
      params.require( :workout ).permit( :date, :workout, :mood, :length )
    end
end
