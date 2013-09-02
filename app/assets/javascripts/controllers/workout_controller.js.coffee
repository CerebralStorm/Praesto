Praesto.WorkoutsWorkoutController = Ember.ObjectController.extend
  isEditing: false

  openEdit: ->
    @set('isEditing', true)

  closeEdit: ->
    @set('isEditing', false)

  updateWorkout: (workout) ->
    date = new Date(workout._data.attributes.date)
    workout._data.attributes.date = date
    workout.save()

