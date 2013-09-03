Praesto.WorkoutController = Ember.ObjectController.extend
  isEditing: false
  isStrength: true
  isEndurance: false
  isBalance: false

  openEdit: ->
    @set('isEditing', true)

  closeEdit: ->
    @set('isEditing', false)

  updateWorkout: (workout) ->
    @set('isEditing', false)
    workout.save()

  select: (activity) ->
    @set('isStrength', false)
    @set('isEndurance', false)
    @set('isBalance', false)
    switch activity
      when "strength" then @set('isStrength', true)
      when "endurance" then @set('isEndurance', true)
      when "balance" then @set('isBalance', true)
    debugger;

  addActivity: ->
    
