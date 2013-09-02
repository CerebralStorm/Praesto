DS.RESTAdapter.configure("plurals",
  activity: "activities" 
)

Praesto.Store = DS.Store.extend
  revision: 12
  adapter: DS.RESTAdapter.create(
    bulkCommit: false
  )


