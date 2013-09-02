Praesto.WorkoutsController = Ember.ArrayController.extend
  sortProperties: ['date']
  sortAscending: false

  createWorkout: ->
    location = @get('location')
    date = @get('date')
    workout = Praesto.Workout.createRecord(
      location: location
      date: date
    )
    workout.save()

  deleteWorkout: (workout) ->
    workout.deleteRecord()
    workout.save()