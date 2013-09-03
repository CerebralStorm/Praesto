Praesto.Activity = DS.Model.extend
  name: DS.attr('string')
  activity_type: DS.attr('string')
  reps: DS.attr('number')
  sets: DS.attr('number')
  duration: DS.attr('number')
  distance: DS.attr('number')
  workout: DS.belongsTo('Praesto.Workout')