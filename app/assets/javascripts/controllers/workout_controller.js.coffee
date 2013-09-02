Praesto.WorkoutController = Ember.ObjectController.extend
  isEditing: false

  openEdit: ->
    @set('isEditing', true)

  closeEdit: ->
    @set('isEditing', false)

  updateWorkout: (workout) ->
    @set('isEditing', false)
    workout.save()

