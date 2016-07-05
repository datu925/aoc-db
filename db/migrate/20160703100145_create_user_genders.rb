class CreateUserGenders < ActiveRecord::Migration
  def change
    create_table :user_genders do |t|
      t.integer :user_id
      t.integer :gender_id

      t.timestamps null: false
    end
  end
end
