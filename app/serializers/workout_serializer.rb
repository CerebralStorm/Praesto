class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :date, :location, :user_id
  embed :ids
  has_many :activities
end
