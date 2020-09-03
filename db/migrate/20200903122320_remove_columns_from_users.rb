class RemoveColumnsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :name, :string
    remove_column :users, :image, :string
    remove_column :users, :content, :string
    remove_column :users, :title, :string
  end
end
