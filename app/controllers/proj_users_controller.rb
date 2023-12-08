class ProjUsersController < ApplicationController
  before_action :set_proj_user, only: %i[ show edit update destroy ]

  # GET /proj_users or /proj_users.json
  def index
    @proj_users = ProjUser.all
  end

  # GET /proj_users/1 or /proj_users/1.json
  def show
  end

  # GET /proj_users/new
  def new
    @proj_user = ProjUser.new
  end

  # GET /proj_users/1/edit
  def edit
  end

  # POST /proj_users or /proj_users.json
  def create
    @proj_user = ProjUser.new(proj_user_params)

    respond_to do |format|
      if @proj_user.save
        format.html { redirect_to proj_user_url(@proj_user), notice: "Proj user was successfully created." }
        format.json { render :show, status: :created, location: @proj_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @proj_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proj_users/1 or /proj_users/1.json
  def update
    respond_to do |format|
      if @proj_user.update(proj_user_params)
        format.html { redirect_to proj_user_url(@proj_user), notice: "Proj user was successfully updated." }
        format.json { render :show, status: :ok, location: @proj_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @proj_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proj_users/1 or /proj_users/1.json
  def destroy
    @proj_user.destroy!

    respond_to do |format|
      format.html { redirect_to proj_users_url, notice: "Proj user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proj_user
      @proj_user = ProjUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def proj_user_params
      params.require(:proj_user).permit(:project_id, :user_id)
    end
end
