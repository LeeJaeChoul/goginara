class CreateMeats < ActiveRecord::Migration
  def change
    create_table :meats do |t|
      t.references :category, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :title,  null: false
      t.string :maker,  null: false
      t.string :origin, null: false
      t.string :weight, null: false
      t.string :life,   null: false
      t.string :price,  null: false

      t.timestamps null: false
    end
  end
end
