class CreateActorDetails < ActiveRecord::Migration
  def change
    create_table :actor_details do |t|
      t.references :user
      t.string :phone
      t.date :birthday
      t.integer :age_min
      t.integer :age_max

      t.timestamps null: false
    end
  end
end
