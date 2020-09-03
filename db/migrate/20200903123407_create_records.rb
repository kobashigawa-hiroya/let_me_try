class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :counter_id, null: false, foreign_key: true
      t.references :duty_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
