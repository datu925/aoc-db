class CreateIdentifications < ActiveRecord::Migration
  def change
    create_table :identifications do |t|
      t.integer :user_id
      t.integer :identity_id

      t.timestamps null: false
    end
  end
end
