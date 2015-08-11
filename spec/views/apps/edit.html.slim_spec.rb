require 'rails_helper'

RSpec.describe "apps/edit", type: :view do
  before(:each) do
    @app = create(:app)
  end

  it "renders the edit app form" do
    render

      assert_select "form[action=?][method=?]", app_path(@app), "post" do
      assert_select "input#app_name[name=?]", "app[name]"
      assert_select "input#app_server_ip[name=?]", "app[server_ip]"
      assert_select "input#app_server_user[name=?]", "app[server_user]"
    end
  end
end
