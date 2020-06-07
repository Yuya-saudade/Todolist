class Project < ApplicationRecord
  validates :name, {presence: true, length: {maximum: 30}}
  validates :user_id, {presence: true, length: {maximum: 30}}
end
