class CreateUserTrips < ActiveRecord::Migration
  def change
    create_table :user_trips do |t|
    	t.integer :trip_id
      t.integer :user_id
      t.timestamps
    end
  end
end
