class Record < ApplicationRecord
  belongs_to :user_id
  belongs_to :counter_id
  belongs_to :duty_id
end
