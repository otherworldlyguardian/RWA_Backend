class CreateForms < ActiveRecord::Migration[5.2]
  def change
    create_table :forms do |t|
      t.timestamp :date_time
      t.boolean :sand
      t.string :description
      t.timestamp :start
      t.timestamp :end
      t.integer :gallons
      t.string :application
      t.string :method
      t.string :soil
      t.string :weather
      t.integer :temp
      t.string :notes
      t.belongs_to :driver, foreign_key: true
      t.belongs_to :field, foreign_key: true

      t.timestamps
    end
  end
end
