class CreatePorks < ActiveRecord::Migration
  def change
    create_table :porks do |t|
      t.string :title
      t.string :maker
      t.string :origin
      t.string :weight
      t.string :life
      t.string :price

      t.timestamps null: false
    end
  end
end
