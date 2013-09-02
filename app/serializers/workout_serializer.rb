class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :date, :location, :user_id
end
