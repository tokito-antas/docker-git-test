class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = \
  validates :email, presence: true, length: { maximum: 50 }, uniqueness: true
end
