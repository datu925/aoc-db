class CreateActorVoiceTypes < ActiveRecord::Migration
  def change
    create_table :actor_voice_types do |t|
      t.integer :actor_detail_id
      t.integer :voice_type_id

      t.timestamps null: false
    end
  end
end
