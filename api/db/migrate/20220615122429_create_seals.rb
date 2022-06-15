class CreateSeals < ActiveRecord::Migration[6.1]
  def change
    create_table :seals do |t|
      t.string :name, null: false
      t.integer :hp, null: false
      t.integer :attack, null: false
      t.integer :defense, null: false

      t.timestamps
    end
  end
end
