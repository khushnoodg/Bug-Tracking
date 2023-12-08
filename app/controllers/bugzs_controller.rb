class BugzsController < ApplicationController
  before_action :set_bugz, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /bugzs or /bugzs.json
  def index 
    @bugzs = Bugz.all
  end

  # GET /bugzs/1 or /bugzs/1.json
  def show
  end

  # GET /bugzs/new
  def new
    if current_user.user_type == 'developer'
      respond_to do |format|
        format.html { redirect_to bugzs_url, notice: "YOu Are Developer You cannot Access." }
        format.json { head :no_content }
      end
    @bugz = Bugz.new
    else
      @bugz = Bugz.new
    end
    
  end

  # GET /bugzs/1/edit
  def edit
  end

  # POST /bugzs or /bugzs.json
  def create
    @bugz = Bugz.new(bugz_params)

    respond_to do |format|
      if @bugz.save
        format.html { redirect_to bugz_url(@bugz), notice: "Bugz was successfully created." }
        format.json { render :show, status: :created, location: @bugz }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bugz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bugzs/1 or /bugzs/1.json
  def update
    respond_to do |format|
      if @bugz.update(bugz_params)
        format.html { redirect_to bugz_url(@bugz), notice: "Bugz was successfully updated." }
        format.json { render :show, status: :ok, location: @bugz }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bugz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bugzs/1 or /bugzs/1.json
  def destroy

    if current_user.user_type == 'developer'
      respond_to do |format|
        format.html { redirect_to bugzs_url, notice: "YOu Are Developer You cannot DElete  ." }
        format.json { head :no_content }
      end
    else
    @bugz.destroy!
    respond_to do |format|
      format.html { redirect_to bugzs_url, notice: "Bugz was successfully destroyed." }
      format.json { head :no_content }
    end

    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bugz
      @bugz = Bugz.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bugz_params
      params.require(:bugz).permit(:title, :deadline, :b_type, :status, :project_id,:image)
    end
end
