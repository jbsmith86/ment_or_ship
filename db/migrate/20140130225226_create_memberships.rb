class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.timestamp :member_since
      t.integer :member_number
      t.integer :business_id
      t.integer :person_id

      t.timestamps
    end
  end
end
