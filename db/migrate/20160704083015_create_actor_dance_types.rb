class CreateActorDanceTypes < ActiveRecord::Migration
  def change
    create_table :actor_dance_types do |t|
      t.integer :actor_detail_id
      t.integer :dance_type_id

      t.timestamps null: false
    end
  end
end
