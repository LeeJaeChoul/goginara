class CreateBuyInformations < ActiveRecord::Migration
  def change
    create_table :buy_informations do |t|
      t.string :user,                 null: false
      t.string :phonenumber,          null: false
      t.string :email,                null: false
      t.string :requirement,          null: false
      t.string :postcodify_postcode,  null: false
      t.string :postcodify_address,   null: false
      t.string :postcodify_details,   null: false

      t.timestamps null: false
    end
  end
end
