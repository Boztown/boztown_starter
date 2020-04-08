require 'rails_helper'

describe PrimaryNavCell, type: :cell do

  subject { cell(:primary_nav) }
  controller ApplicationController

  context 'cell rendering' do
    it { expect(subject.call).to have_css("nav") }
  end
end
