class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :fullname
      t.string :email
      t.string :city
      t.date :birthdate
      t.string :gender
      t.text :status, default: ""
      t.integer :coins, default: 0

      t.timestamps
    end
  end
end
