require 'rails_helper'

RSpec.describe "apps/new", type: :view do
  before(:each) do
    assign(:app,build(:app))
  end

  it "renders new app form" do
    render
    assert_select "form[action=?][method=?]", apps_path, "post" do
      assert_select "input#app_name[name=?]", "app[name]"
      assert_select "input#app_server_ip[name=?]", "app[server_ip]"
      assert_select "input#app_server_user[name=?]", "app[server_user]"
    end
  end
end
