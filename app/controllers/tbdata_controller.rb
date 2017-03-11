class TbdataController < ApplicationController
  before_action :set_tbdatum, only: [:show, :edit, :update, :destroy]

  # GET /tbdata
  # GET /tbdata.json
  def index
    @tbdata = Tbdatum.all
  end

  # GET /tbdata/1
  # GET /tbdata/1.json
  def show
  end

  # GET /tbdata/new
  def new
    @tbdatum = Tbdatum.new
  end

  # GET /tbdata/1/edit
  def edit
  end

  # POST /tbdata
  # POST /tbdata.json
  def create
    @tbdatum = Tbdatum.new(tbdatum_params)

    respond_to do |format|
      if @tbdatum.save
        format.html { redirect_to @tbdatum, notice: 'Tbdatum was successfully created.' }
        format.json { render :show, status: :created, location: @tbdatum }
      else
        format.html { render :new }
        format.json { render json: @tbdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tbdata/1
  # PATCH/PUT /tbdata/1.json
  def update
    respond_to do |format|
      if @tbdatum.update(tbdatum_params)
        format.html { redirect_to @tbdatum, notice: 'Tbdatum was successfully updated.' }
        format.json { render :show, status: :ok, location: @tbdatum }
      else
        format.html { render :edit }
        format.json { render json: @tbdatum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tbdata/1
  # DELETE /tbdata/1.json
  def destroy
    @tbdatum.destroy
    respond_to do |format|
      format.html { redirect_to tbdata_url, notice: 'Tbdatum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbdatum
      @tbdatum = Tbdatum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tbdatum_params
      params.require(:tbdatum).permit(:name, :level, :age, :address)
    end
end
