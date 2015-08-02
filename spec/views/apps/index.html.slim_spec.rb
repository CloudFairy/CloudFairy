require 'rails_helper'

RSpec.describe "apps/index", type: :view do
  before(:each) do
    assign(:apps, [
      App.create!(
        :user => nil,
        :name => "Name",
        :server_ip => "Server Ip",
        :server_user => "Server User"
      ),
      App.create!(
        :user => nil,
        :name => "Name",
        :server_ip => "Server Ip",
        :server_user => "Server User"
      )
    ])
  end

  it "renders a list of apps" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Server Ip".to_s, :count => 2
    assert_select "tr>td", :text => "Server User".to_s, :count => 2
  end
end
