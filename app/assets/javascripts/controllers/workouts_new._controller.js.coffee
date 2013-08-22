Praesto.WorkoutsNewController = Ember.ObjectController.extend(
  save: ->
    @get('store').commit()

  transitionAfterSave: ( ->
    # when creating new records, it's necessary to wait for the record to be assigned
    # an id before we can transition to its route (which depends on its id)
    @transitionToRoute('post', @get('content')) if @get('content.id')
  ).observes('content.id')
)