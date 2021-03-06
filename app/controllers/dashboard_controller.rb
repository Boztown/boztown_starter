# frozen_string_literal: true

class DashboardController < ApplicationController
  def show
    respond_to do |format|
      format.html
      format.json
    end
  end
end
