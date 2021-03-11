class Post < ApplicationRecord
  validates :text, presence: true
  validates :name, presence: true
  validates :calorie, presence: true

end
