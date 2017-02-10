class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :seeds
  has_many :picks

  validates :email,
    uniqueness: true

  validates :password,
    length: { minimum: 3 },
    if: -> { new_record? || changes[:encrypted_password] }

  validates :password,
    confirmation: true,
    if: -> { new_record? || changes[:encrypted_password] }

  validates :password_confirmation,
    presence: true,
    if: -> { new_record? || changes[:encrypted_password] }

  validates :first_name,
    presence: true

  validates :last_name,
    presence: true
end
