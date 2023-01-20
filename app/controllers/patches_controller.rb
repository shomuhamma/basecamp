class PatchesController < ApplicationController
  before_action :set_project, only: %i[ index new ]
  before_action :set_patch, only: %i[ show edit update destroy ]

  # GET /patches or /patches.json
  def index
    @patches = Patch.all
  end

  # GET /patches/1 or /patches/1.json
  def show
  end

  # GET /patches/new
  def new
    @patch = @project.patches.new
  end

  # GET /patches/1/edit
  def edit
  end

  # POST /patches or /patches.json
  def create
    @patch = Patch.new(patch_params)

    respond_to do |format|
      if @patch.save
        format.html { redirect_to patch_url(@patch), notice: "Patch was successfully created." }
        format.json { render :show, status: :created, location: @patch }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patches/1 or /patches/1.json
  def update
    respond_to do |format|
      if @patch.update(patch_params)
        format.html { redirect_to patch_url(@patch), notice: "Patch was successfully updated." }
        format.json { render :show, status: :ok, location: @patch }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patches/1 or /patches/1.json
  def destroy
    @patch.destroy

    respond_to do |format|
      format.html { redirect_to project_patches_url(@patch.project), notice: "Patch was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def set_project
    @project = Project.find(params[:project_id])
  end
  # Use callbacks to share common setup or constraints between actions.
    def set_patch
      @patch = Patch.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patch_params
      params.require(:patch).permit(:description,:pat, :project_id)
    end
end
