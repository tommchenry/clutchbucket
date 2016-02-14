class Score < ActiveRecord::Base
  validates :name, length: {maximum: 16}
  validates :name, presence: true
end