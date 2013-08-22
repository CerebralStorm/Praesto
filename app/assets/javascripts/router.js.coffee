Praesto.Router.map ->
  @resource 'workouts', ->
    @route 'new'
    @route 'workout', path: '/:workout_id'


Praesto.WorkoutsRoute = Ember.Route.extend
  model: -> Praesto.Workout.find()

Praesto.WorkoutsNewRoute = Ember.Route.extend(
  model: ->
    Praesto.Workout.createRecord(publishedAt: new Date(), author: "current user")
  setupController: (controller) ->
    # controller.set('content', App.Post.createRecord(publishedAt: new Date(), author: "current user"))
)

