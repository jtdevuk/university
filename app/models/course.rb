class Course < ApplicationRecord
  validates :name, :description , presence: true, length: { minimum: 5, maximum: 50 }
  validates :short_name, :description , presence: true, length: { minimum: 3, maximum: 15 }
  validates :description, :description , presence: true, length: { minimum: 10, maximum: 300 }
end
