class CreaModulesController < ApplicationController
  before_action :set_crea_module, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /crea_modules
  # GET /crea_modules.json
  def index
    @crea_modules = CreaModule.all
  end

  # GET /crea_modules/1
  # GET /crea_modules/1.json
  def show
  end

  # GET /crea_modules/new
  def new
    @crea_module = CreaModule.new
  end

  # GET /crea_modules/1/edit
  def edit
  end

  # POST /crea_modules
  # POST /crea_modules.json
  def create
    @crea_module = CreaModule.new(crea_module_params)

    respond_to do |format|
      if @crea_module.save
        format.html { redirect_to @crea_module, notice: 'Crea module was successfully created.' }
        format.json { render :show, status: :created, location: @crea_module }
      else
        format.html { render :new }
        format.json { render json: @crea_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crea_modules/1
  # PATCH/PUT /crea_modules/1.json
  def update
    respond_to do |format|
      if @crea_module.update(crea_module_params)
        format.html { redirect_to @crea_module, notice: 'Crea module was successfully updated.' }
        format.json { render :show, status: :ok, location: @crea_module }
      else
        format.html { render :edit }
        format.json { render json: @crea_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crea_modules/1
  # DELETE /crea_modules/1.json
  def destroy
    @crea_module.destroy
    respond_to do |format|
      format.html { redirect_to crea_modules_url, notice: 'Crea module was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crea_module
      @crea_module = CreaModule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crea_module_params
      params.require(:crea_module).permit(:name, :enabled, :module_type, :status)
    end
end
