require 'rails_helper'

RSpec.describe Destination, type: :model do
  it "is valid" do
    expect(Destination.new).to be_valid
  end
end
