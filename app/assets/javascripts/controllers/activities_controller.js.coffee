Praesto.ActivitiesController = Ember.ArrayController.extend
  resourceType: "activity"

  addActivity: (activity) ->
    name = @get('name')
    activityType = @get('activityType')
    sets = @get('sets')
    reps = @get('reps')
    duration = @get('duration')
    distance = @get('distance')
    activity = Praesto.Activity.createRecord(
      name: name
      activity_type: activityType
      sets: sets
      reps: reps
      duration: duration
      distance: distance
    )
    activity.save()