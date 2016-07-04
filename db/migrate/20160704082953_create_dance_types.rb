class CreateDanceTypes < ActiveRecord::Migration
  def change
    create_table :dance_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
