class CreateUnionMemberships < ActiveRecord::Migration
  def change
    create_table :union_memberships do |t|
      t.integer :user_id
      t.integer :union_id

      t.timestamps null: false
    end
  end
end
