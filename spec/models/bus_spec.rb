require 'rails_helper'

describe Bus do
  it { should validate_presence_of :name }
end
