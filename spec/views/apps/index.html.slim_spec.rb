require 'rails_helper'

RSpec.describe "apps/index", type: :view do
  before(:each) do
    assign(:apps, [
      create(:app),
      create(:app)
    ])
  end

  it "renders a list of apps" do
    render
    assert_select ".mdl-card",  :count => 2
  end
end
