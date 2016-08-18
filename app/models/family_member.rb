class FamilyMember < ApplicationRecord
  has_secure_password

  belongs_to :user
  # has_many :recipes
end
