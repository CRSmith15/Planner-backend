class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.string :date
      t.string :time
      t.integer :total_events

      t.timestamps
    end
  end
end
