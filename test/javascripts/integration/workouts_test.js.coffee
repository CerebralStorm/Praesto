module "/workouts",
  setup: ->
    Ember.run Praesto, Praesto.advanceReadiness

  teardown: ->
    Praesto.reset()

test "/", ->
  expect 2
  visit("/").then ->
    ok exists(".navbar-collapse"), "The navbar was rendered"
    ok exists(".navbar-fixed-bottom"), "The footer was rendered"


test "/workouts", ->
  expect 1
  visit("/workouts").then ->
    ok exists("li:contains(You don't have any workouts logged.)"), "empty workouts is rendered"


test "/workouts/:workout_id", ->
  expect 1
  visit("/workouts").then(->
    click "li a:first"
  ).then ->
    equal find("h3").text(), "Workout", "The workout title was rendered"


