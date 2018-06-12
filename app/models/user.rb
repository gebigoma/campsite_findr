class User < ApplicationRecord
  has_secure_password
  has_many :sites, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
