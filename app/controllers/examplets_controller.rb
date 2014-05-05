class ExampletsController < ApplicationController
  before_action :set_examplet, only: [:show, :edit, :update, :destroy]

  # GET /examplets
  # GET /examplets.json
  def index
    @examplets = Examplet.all
  end

  # GET /examplets/1
  # GET /examplets/1.json
  def show
  end

  # GET /examplets/new
  def new
    @examplet = Examplet.new
  end

  # GET /examplets/1/edit
  def edit
  end

  # POST /examplets
  # POST /examplets.json
  def create
    @examplet = Examplet.new(examplet_params)

    respond_to do |format|
      if @examplet.save
        format.html { redirect_to @examplet, notice: 'Examplet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @examplet }
      else
        format.html { render action: 'new' }
        format.json { render json: @examplet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /examplets/1
  # PATCH/PUT /examplets/1.json
  def update
    respond_to do |format|
      if @examplet.update(examplet_params)
        format.html { redirect_to @examplet, notice: 'Examplet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @examplet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /examplets/1
  # DELETE /examplets/1.json
  def destroy
    @examplet.destroy
    respond_to do |format|
      format.html { redirect_to examplets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examplet
      @examplet = Examplet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def examplet_params
      params.require(:examplet).permit(:name, :type)
    end
end
