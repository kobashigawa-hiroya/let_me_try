class User < ApplicationRecord
  validates :title, :content, :image, :name, presence: true
end
