Praesto.WorkoutsWorkoutController = Ember.ObjectController.extend
  isEditing: false

  openEdit: ->
    @set('isEditing', true)

  closeEdit: ->
    @set('isEditing', false)

  updateWorkout: (workout) ->
    workout.save()

