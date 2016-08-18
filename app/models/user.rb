class User < ApplicationRecord
  has_secure_password

  has_many :family_members
  # has_many :recipes
end
