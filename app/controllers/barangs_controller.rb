class BarangsController < ApplicationController
  before_action :set_barang, only: [:show, :edit, :update, :destroy]

  # GET /barangs
  # GET /barangs.json
  def index
    @barangs = Barang.all.order(:created_at => 'DESC')
    @barang = Barang.new
  end

  # GET /barangs/1
  # GET /barangs/1.json
  def show
  end

  # GET /barangs/new
  def new
    @barang = Barang.new
  end

  # GET /barangs/1/edit
  def edit
  end

  # POST /barangs
  # POST /barangs.json
  def create
    @barang = Barang.new(barang_params)

    respond_to do |format|
      if @barang.save
        format.html { redirect_to @barang, notice: 'Barang was successfully created.' }
        format.json { render :show, status: :created, location: @barang }
        format.js {  }
      else
        format.html { render :new }
        format.json { render json: @barang.errors, status: :unprocessable_entity }
        format.js {  }
      end
    end
  end

  # PATCH/PUT /barangs/1
  # PATCH/PUT /barangs/1.json
  def update
    respond_to do |format|
      if @barang.update(barang_params)
        format.html { redirect_to @barang, notice: 'Barang was successfully updated.' }
        format.json { render :show, status: :ok, location: @barang }
        format.js {  }
      else
        format.html { render :edit }
        format.json { render json: @barang.errors, status: :unprocessable_entity }
        format.js {  }
      end
    end
  end

  # DELETE /barangs/1
  # DELETE /barangs/1.json
  def destroy
    @barang.destroy
    respond_to do |format|
      format.html { redirect_to barangs_url, notice: 'Barang was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barang
      @barang = Barang.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barang_params
      params.require(:barang).permit(:kode, :nama, :harga)
    end
end
