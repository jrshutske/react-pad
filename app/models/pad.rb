class Pad < ApplicationRecord
  belongs_to :user, foreign_key: "created_by_id"
  has_many :tasks
  validates :name, presence: true
end
