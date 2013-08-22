Praesto.Router.map ->
  @resource 'workouts', ->
    @route 'new'
    @route 'workout', path: '/:workout_id'


