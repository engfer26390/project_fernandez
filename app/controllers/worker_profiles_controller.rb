class WorkerProfilesController < ApplicationController
  before_action :set_worker_profile, only: [:show, :edit, :update, :destroy]

  # GET /worker_profiles
  # GET /worker_profiles.json
  def index
    @worker_profiles = WorkerProfile.all
  end

  # GET /worker_profiles/1
  # GET /worker_profiles/1.json
  def show
  end

  # GET /worker_profiles/new
  def new
    @worker_profile = WorkerProfile.new
  end

  # GET /worker_profiles/1/edit
  def edit
  end

  # POST /worker_profiles
  # POST /worker_profiles.json
  def create
    @worker_profile = WorkerProfile.new(worker_profile_params)

    respond_to do |format|
      if @worker_profile.save
        format.html { redirect_to @worker_profile, notice: 'Worker profile was successfully created.' }
        format.json { render :show, status: :created, location: @worker_profile }
      else
        format.html { render :new }
        format.json { render json: @worker_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worker_profiles/1
  # PATCH/PUT /worker_profiles/1.json
  def update
    respond_to do |format|
      if @worker_profile.update(worker_profile_params)
        format.html { redirect_to @worker_profile, notice: 'Worker profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @worker_profile }
      else
        format.html { render :edit }
        format.json { render json: @worker_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worker_profiles/1
  # DELETE /worker_profiles/1.json
  def destroy
    @worker_profile.destroy
    respond_to do |format|
      format.html { redirect_to worker_profiles_url, notice: 'Worker profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worker_profile
      @worker_profile = WorkerProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def worker_profile_params
      params.require(:worker_profile).permit(:nickname, :bio,
      user_attributes: [ :id, :email, :password, :password_confirmation ])
    end
end
