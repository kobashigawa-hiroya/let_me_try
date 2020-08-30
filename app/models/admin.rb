class Admin < ApplicationRecord
  def change
    create_table :admin do |t|
      t.string :name
      t.text :content
      t.string :title
      t.string :image
      t.timestamps
    end
  end
end
