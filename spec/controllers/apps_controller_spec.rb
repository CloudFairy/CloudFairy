require 'rails_helper'

RSpec.describe AppsController, type: :controller do
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }
  let(:valid_session) { {} }

  login_user
  let(:app) { create :app, user: User.first }

  describe "GET #index" do
    it "assigns all apps as @apps" do
      create :app
      get :index, {}
      expect(assigns(:apps)).to eq([app])
    end
  end

  describe "GET #show" do
    it "assigns the requested app as @app" do
      get :show, {:id => app.to_param}
      expect(assigns(:app)).to eq(app)
    end
  end

  describe "GET #new" do
    it "assigns a new app as @app" do
      get :new, {}
      expect(assigns(:app)).to be_a_new(App)
    end
  end

  describe "GET #edit" do
    it "assigns the requested app as @app" do
      get :edit, {:id => app.to_param}, valid_session
      expect(assigns(:app)).to eq(app)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new App" do
        expect {
          post :create, {:app => valid_attributes}, valid_session
        }.to change(App, :count).by(1)
      end

      it "assigns a newly created app as @app" do
        post :create, {:app => valid_attributes}, valid_session
        expect(assigns(:app)).to be_a(App)
        expect(assigns(:app)).to be_persisted
      end

      it "redirects to the created app" do
        post :create, {:app => valid_attributes}, valid_session
        expect(response).to redirect_to(App.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved app as @app" do
        post :create, {:app => invalid_attributes}, valid_session
        expect(assigns(:app)).to be_a_new(App)
      end

      it "re-renders the 'new' template" do
        post :create, {:app => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested app" do
        app = App.create! valid_attributes
        put :update, {:id => app.to_param, :app => new_attributes}, valid_session
        app.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested app as @app" do
        app = App.create! valid_attributes
        put :update, {:id => app.to_param, :app => valid_attributes}, valid_session
        expect(assigns(:app)).to eq(app)
      end

      it "redirects to the app" do
        app = App.create! valid_attributes
        put :update, {:id => app.to_param, :app => valid_attributes}, valid_session
        expect(response).to redirect_to(app)
      end
    end

    context "with invalid params" do
      it "assigns the app as @app" do
        app = App.create! valid_attributes
        put :update, {:id => app.to_param, :app => invalid_attributes}, valid_session
        expect(assigns(:app)).to eq(app)
      end

      it "re-renders the 'edit' template" do
        app = App.create! valid_attributes
        put :update, {:id => app.to_param, :app => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested app" do
      app = App.create! valid_attributes
      expect {
        delete :destroy, {:id => app.to_param}, valid_session
      }.to change(App, :count).by(-1)
    end

    it "redirects to the apps list" do
      app = App.create! valid_attributes
      delete :destroy, {:id => app.to_param}, valid_session
      expect(response).to redirect_to(apps_url)
    end
  end
end
