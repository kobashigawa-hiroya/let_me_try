class RemoveContentFromUser < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :content, :string
  end
end
