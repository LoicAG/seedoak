class Seed < ApplicationRecord
  has_many :picks

  belongs_to :user

  validates :name,
    presence: true,
    length: { minimum: 5 }

  validates :description,
    presence: true,
    length: { minimum: 5 }
end
