Praesto.Router.map ->
  @resource 'workouts', ->
    @resource 'workout', path: '/:workout_id', ->
      @resource 'activities', ->
        @resource 'activity', path: ':activity_id'

Praesto.WorkoutsRoute = Ember.Route.extend
  model: -> Praesto.Workout.find()

Praesto.ActivitiesRoute = Ember.Route.extend
  model: -> Praesto.Activity.find()

