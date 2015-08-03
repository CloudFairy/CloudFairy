require 'rails_helper'

RSpec.describe App, type: :model do
  describe "validations" do
    it "presence of" do
      expect(build(:app, user: nil)).to be_invalid
      expect(build(:app, name: nil)).to be_invalid
      expect(build(:app)).to be_valid
    end
  end
end
