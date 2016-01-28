class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :mobile
      t.string :email
      t.string :name
      t.string :transaction_id

      t.timestamps null: false
    end
  end
end
