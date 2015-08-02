require 'rails_helper'

RSpec.describe "apps/edit", type: :view do
  before(:each) do
    @app = assign(:app, App.create!(
      :user => nil,
      :name => "MyString",
      :server_ip => "MyString",
      :server_user => "MyString"
    ))
  end

  it "renders the edit app form" do
    render

    assert_select "form[action=?][method=?]", app_path(@app), "post" do

      assert_select "input#app_user_id[name=?]", "app[user_id]"

      assert_select "input#app_name[name=?]", "app[name]"

      assert_select "input#app_server_ip[name=?]", "app[server_ip]"

      assert_select "input#app_server_user[name=?]", "app[server_user]"
    end
  end
end
