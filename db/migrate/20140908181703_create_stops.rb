class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.integer :bus_id
      t.integer :line_id
    end
  end
end
