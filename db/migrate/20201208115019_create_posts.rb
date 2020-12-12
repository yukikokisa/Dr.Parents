class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user,       null: false, foreign_key: true
      t.integer :symptom_id,    null: false
      t.integer :onset_time_id, null: false
      t.integer :contact_id,    null: false
      t.integer :advice_id,     null: false
      t.string  :child_age,     null: false
      t.integer :enrollment_status_id, null: false
      t.text    :text
      t.timestamps
    end
  end
end
