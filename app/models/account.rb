class Account < ApplicationRecord
  has_many :account_users
  has_many :users, through: :account_users
end
