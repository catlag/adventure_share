class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :departure
      t.string :destination
      t.string :startDate
      t.string :endDate

      t.timestamps
    end
  end
end
