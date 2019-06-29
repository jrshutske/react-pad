class PadsController < ApplicationController
  before_action :set_pad, only: [:show, :edit, :update, :destroy]

  # GET /pads
  # GET /pads.json
  def index
    @pads = Pad.all
    @pad = Pad.new
  end

  # GET /pads/1
  # GET /pads/1.json
  def show
    @task = Task.new
    @tasks = Task.where(pad_id: @pad.id)
  end

  # GET /pads/new
  def new
    @pad = Pad.new
  end

  # GET /pads/1/edit
  def edit
  end

  # POST /pads
  # POST /pads.json
  def create
    @pad = Pad.new(pad_params)

    respond_to do |format|
      if @pad.save
        format.html { redirect_to @pad, notice: 'Pad was successfully created.' }
        format.json { render :show, status: :created, location: @pad }
      else
        format.html { render :new }
        format.json { render json: @pad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pads/1
  # PATCH/PUT /pads/1.json
  def update
    respond_to do |format|
      if @pad.update(pad_params)
        format.html { redirect_to @pad, notice: 'Pad was successfully updated.' }
        format.json { render :show, status: :ok, location: @pad }
      else
        format.html { render :edit }
        format.json { render json: @pad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pads/1
  # DELETE /pads/1.json
  def destroy
    @pad.destroy
    respond_to do |format|
      format.html { redirect_to pads_url, notice: 'Pad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pad
      @pad = Pad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pad_params
      params.require(:pad).permit(:name, :description, :created_by_id)
    end
end
