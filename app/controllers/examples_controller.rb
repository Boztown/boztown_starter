class ExamplesController < ApplicationController
  before_action :set_example, only: [:show, :edit, :update, :destroy]

  # GET /examples
  # GET /examples.json
  def index
    @examples = Example.all
  end

  # GET /examples/1
  # GET /examples/1.json
  def show
  end

  # GET /examples/new
  def new
    @example = Example.new
  end

  # GET /examples/1/edit
  def edit
  end

  # POST /examples
  # POST /examples.json
  def create
    @example = Example.new(example_params)

    respond_to do |format|
      if @example.save
        format.html { redirect_to @example, notice: 'Example was successfully created.' }
        format.json { render action: 'show', status: :created, location: @example }
      else
        format.html { render action: 'new' }
        format.json { render json: @example.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /examples/1
  # PATCH/PUT /examples/1.json
  def update
    respond_to do |format|
      if @example.update(example_params)
        format.html { redirect_to @example, notice: 'Example was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @example.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /examples/1
  # DELETE /examples/1.json
  def destroy
    @example.destroy
    respond_to do |format|
      format.html { redirect_to examples_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_example
      @example = Example.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def example_params
      params.require(:example).permit(:name)
    end
end
