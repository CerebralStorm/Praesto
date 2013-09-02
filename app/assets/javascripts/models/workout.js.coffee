Praesto.Workout = DS.Model.extend
  location: DS.attr('string')
  date: DS.attr('string')

  activities: DS.hasMany('Praesto.Activity')
