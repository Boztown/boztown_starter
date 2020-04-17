# frozen_string_literal: true

class FormExample
  include ActiveModel::Model

  attr_accessor :name, :email
  validates :name, presence: true
  validates :email, presence: true, length: { in: 2..255 }
end

class UiController < ApplicationController
  def index; end
end
