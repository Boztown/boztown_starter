# frozen_string_literal: true

class DashboardController < ApplicationController
  api :GET, '/dashboard'
  formats ['html', 'json']
  description <<-EOS
    == Short description
      Shows the current users dashboard. A launching place for other activities.
  EOS
  def show
    respond_to do |format|
      format.html
      # TODO: JSON template
      format.json { render json: {} }
    end
  end
end
