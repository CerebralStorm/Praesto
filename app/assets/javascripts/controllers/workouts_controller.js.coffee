Praesto.WorkoutsController = Ember.ArrayController.extend
  resourceType: 'workout'
  createWorkout: ->
    location = @get('location')
    date = @get('date')
    date = new Date(date)
    workout = Praesto.Workout.createRecord(
      location: location
      date: date
    )
    workout.save()

  deleteWorkout: (workout) ->
    workout.deleteRecord()
    workout.save()