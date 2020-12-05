class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :activity
      t.string :description
      t.belongs_to :day, null: false, foreign_key: true

      t.timestamps
    end
  end
end
