Praesto.Router.map ->
  @resource 'workouts', ->
    @route 'new'
    @route 'workout', path: '/:workout_id'


Praesto.WorkoutsRoute = Ember.Route.extend
  model: -> Praesto.Workout.find()

