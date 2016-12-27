class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :meat, index: true, foreign_key: true
      t.string :title,  null: false
      # t.string :maker,  null: false
      t.string :origin, null: false
      t.string :weight, null: false
      t.string :life,   null: false
      t.string :price,  null: false
      
      t.timestamps null: false
    end
  end
end
