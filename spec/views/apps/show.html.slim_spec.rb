require 'rails_helper'

RSpec.describe "apps/show", type: :view do
  before(:each) do
    @app = assign(:app, App.create!(
      :user => nil,
      :name => "Name",
      :server_ip => "Server Ip",
      :server_user => "Server User"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Server Ip/)
    expect(rendered).to match(/Server User/)
  end
end
