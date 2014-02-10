class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :category
      t.string :website
      t.string :address
      t.string :phone
      t.text   :about

      t.timestamps
    end
  end
end
