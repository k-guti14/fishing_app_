class Post < ApplicationRecord
  belongs_to :user
  validates :spot_name, presence: true
  validates :content, presence: true
end
