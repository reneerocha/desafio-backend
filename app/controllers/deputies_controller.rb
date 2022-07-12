class DeputiesController < ApplicationController
  before_action :set_deputy, only: %i[ show edit update destroy ]

  # GET /deputies or /deputies.json
  def index
    @deputies = Deputy.all
  end

  # GET /deputies/1 or /deputies/1.json
  def show
  end

  # GET /deputies/new
  def new
    @deputy = Deputy.new
  end

  # GET /deputies/1/edit
  def edit
  end

  # POST /deputies or /deputies.json
  def create
    @deputy = Deputy.new(deputy_params)

    respond_to do |format|
      if @deputy.save
        format.html { redirect_to deputy_url(@deputy), notice: "Deputy was successfully created." }
        format.json { render :show, status: :created, location: @deputy }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @deputy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deputies/1 or /deputies/1.json
  def update
    respond_to do |format|
      if @deputy.update(deputy_params)
        format.html { redirect_to deputy_url(@deputy), notice: "Deputy was successfully updated." }
        format.json { render :show, status: :ok, location: @deputy }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @deputy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deputies/1 or /deputies/1.json
  def destroy
    @deputy.destroy

    respond_to do |format|
      format.html { redirect_to deputies_url, notice: "Deputy was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deputy
      @deputy = Deputy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deputy_params
      params.require(:deputy).permit(:name, :deputy_id, :identity_number, :state, :party, :legislature_id)
    end
end
