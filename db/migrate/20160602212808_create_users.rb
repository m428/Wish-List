class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :first_name
      t.string :last_name
      t.date :birthday
      t.string :city
      t.string :state
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
