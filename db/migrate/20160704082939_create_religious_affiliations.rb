class CreateReligiousAffiliations < ActiveRecord::Migration
  def change
    create_table :religious_affiliations do |t|
      t.integer :actor_detail_id
      t.integer :religion_id

      t.timestamps null: false
    end
  end
end
