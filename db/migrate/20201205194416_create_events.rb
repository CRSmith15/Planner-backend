class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :tasks
      t.string :description
      t.belongs_to :day, null: false, foreign_key: true

      t.timestamps
    end
  end
end
