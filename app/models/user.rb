class User < ApplicationRecord
  has_many :family_members
  has_many :recipes
end
