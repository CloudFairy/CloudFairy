class AppSetupController < ApplicationController
  include Wicked::Wizard
  steps :docker, :architecture

  def show
    @app = App.find(session[:app_id])
    render_wizard
  end

  def update
    @app = App.find(session[:app_id])
    @app.update_attributes(params[:app].permit(:dockerfile,:database))
    render_wizard @app
  end

  private
  def finish_wizard_path
    apps_path
  end
end
