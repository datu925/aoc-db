class CreateActorDetails < ActiveRecord::Migration
  def change
    create_table :actor_details do |t|
      t.references :user
      t.string :representation
      t.string :website
      t.string :location
      t.string :pronouns
      t.string :height
      t.string :weight
      t.string :singer
      t.string :vocal_range
      t.string :classical
      t.string :instrument
      t.string :disability
      t.string :dance_styles
      t.text :bio
      t.integer :age_min
      t.integer :age_max

      t.timestamps null: false
    end
  end
end
