class CreateFields < ActiveRecord::Migration[5.2]
  def change
    create_table :fields do |t|
      t.string :label
      t.string :address
      t.boolean :sand
      t.string :description
      t.integer :acreage
      t.belongs_to :client, foreign_key: true

      t.timestamps
    end
  end
end
