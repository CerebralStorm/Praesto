Praesto.WorkoutsController = Ember.ArrayController.extend
  createWorkout: ->
    location = @get('location')
    date = @get('date')
    workout = Praesto.Workout.createRecord(
      location: location
      date: date
    )
    workout.save()

  updateWorkout: (workout) ->
    workout.save()

  deleteWorkout: (workout) ->
    workout.deleteRecord()
    workout.save()