class PrmsController < ApplicationController
  before_action :set_project, only: %i[ index new ]
  before_action :set_prm, only: %i[ show edit update destroy ]
  # GET /prms or /prms.json
  def index
    @prms = @project.prms
  end

  # GET /prms/1 or /prms/1.json
  def show
    @prmer = @prm.prmers.new
    @prmers = @prm.prmers
  end

  # GET /prms/new
  def new
    @prm = Prm.new
  end

  # GET /prms/1/edit
  def edit
  end

  # POST /prms or /prms.json
  def create
    @prm = Prm.new(prm_params)

    respond_to do |format|
      if @prm.save
        format.html { redirect_to prm_url(@prm), notice: "Prm was successfully created." }
        format.json { render :show, status: :created, location: @prm }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prms/1 or /prms/1.json
  def update
    respond_to do |format|
      if @prm.update(prm_params)
        format.html { redirect_to prm_url(@prm), notice: "Prm was successfully updated." }
        format.json { render :show, status: :ok, location: @prm }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prms/1 or /prms/1.json
  def destroy
    @prm.destroy
    @proj = @prm.project
    respond_to do |format|
      format.html { redirect_to project_prms_url(@proj), notice: "Prm was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def set_project
    
    @project = Project.find(params[:project_id])
  end
  
    # Use callbacks to share common setup or constraints between actions.
    def set_prm
      @prm = Prm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prm_params
      params.require(:prm).permit(:name, :body, :project_id)
    end
end
