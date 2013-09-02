Praesto.Activity = DS.Model.extend
  name: DS.attr('string')
  workout: DS.belongsTo('Praesto.Workout')