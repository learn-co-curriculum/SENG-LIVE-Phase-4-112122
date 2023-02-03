class CreateProps < ActiveRecord::Migration[6.1]
  def change
    create_table :props do |t|
      t.string :name
      t.string :price
      t.string :location
      t.belongs_to :production, null: false, foreign_key: true

      t.timestamps
    end
  end
end
