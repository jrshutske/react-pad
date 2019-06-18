class Task < ApplicationRecord
  belongs_to :pad
  belongs_to :user, foreign_key: 'created_by_id'
end
