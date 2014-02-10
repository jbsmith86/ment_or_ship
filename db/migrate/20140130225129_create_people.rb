class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.date :birthday
      t.string :city
      t.string :phone_number
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
