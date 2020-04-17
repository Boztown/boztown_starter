# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable

  has_many :account_users
  has_many :accounts, through: :account_users

  validates :first_name, presence: true, length: { maximum: 255 }
  validates :last_name, presence: true, length: { maximum: 255 }
  validates :password, length: { in: 8..128 }, allow_blank: true
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, presence: true

  before_create :create_default_account

  def name
    "#{first_name} #{last_name}"
  end


  private

  def create_default_account
    default_account = Account.create!(name: "#{name}'s Account")
    self.accounts << default_account if self.accounts.blank?
  end
end
