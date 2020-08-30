class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.string :content
      t.string :image

      t.timestamps
    end
  end
end
