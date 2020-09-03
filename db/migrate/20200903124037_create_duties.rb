class CreateDuties < ActiveRecord::Migration[6.0]
  def change
    create_table :duties do |t|
      t.string :title
      t.boolean :flag

      t.timestamps
    end
  end
end
