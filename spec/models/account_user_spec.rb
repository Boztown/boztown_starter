require 'rails_helper'

describe AccountUser, type: :model do
  it { should belong_to(:account) }
  it { should belong_to(:user) }
end
