class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.date :date
      t.string :location

      t.timestamps
    end
  end
end
