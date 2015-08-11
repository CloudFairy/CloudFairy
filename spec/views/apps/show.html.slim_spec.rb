require 'rails_helper'

RSpec.describe "apps/show", type: :view do
  before(:each) do
    @app = create(:app)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Server Ip/)
    expect(rendered).to match(/Server User/)
  end
end
