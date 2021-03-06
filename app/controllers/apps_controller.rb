class AppsController < ApplicationController
  before_action :set_app, only: [:show, :edit, :update, :destroy]

  def index
    @apps = current_user.apps
  end

  def show
  end

  def new
    @app = App.new user: current_user
  end

  def edit
  end

  def create
    @app = App.new(app_params.merge(user: current_user))

    respond_to do |format|
      if @app.save
        session[:app_id] = @app.id
        format.html { redirect_to app_setup_index_path, notice: 'App was successfully created.' }
        format.json { render :show, status: :created, location: @app }
      else
        format.html { render :new }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @app.update(app_params)
        session[:app_id] = @app.id
        format.html { redirect_to app_setup_index_path, notice: 'App was successfully updated.' }
        format.json { render :show, status: :ok, location: @app }
      else
        format.html { render :edit }
        format.json { render json: @app.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @app.destroy
    respond_to do |format|
      format.html { redirect_to apps_url, notice: 'App was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_app
      @app = App.find(params[:id])
    end

    def app_params
      params.require(:app).permit(:name, :server_ip, :server_user)
    end
end
