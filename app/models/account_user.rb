class AccountUser < ApplicationRecord
  belongs_to :account
  belongs_to :users
end
