class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.references :product, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :order, index: true, foreign_key: true

      t.boolean :ordered, default: false
      t.integer :number, default: 1

      t.timestamps null: false
    end
  end
end
