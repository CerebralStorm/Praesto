Praesto.Router.map ->
  @resource 'workouts', ->
    @resource 'workout', path: '/:workout_id'


Praesto.WorkoutsRoute = Ember.Route.extend
  model: -> Praesto.Workout.find()

