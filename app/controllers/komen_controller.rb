class KomenController < ApplicationController
  before_action :set_koman, only: [:show, :edit, :update, :destroy]

  # GET /komen
  # GET /komen.json
  def index
    @komen = Koman.all
  end

  # GET /komen/1
  # GET /komen/1.json
  def show
  end

  # GET /komen/new
  def new
    @koman = Koman.new
  end

  # GET /komen/1/edit
  def edit
  end

  # POST /komen
  # POST /komen.json
  def create
    @koman = Koman.new(koman_params)

    respond_to do |format|
      if @koman.save
        format.html { redirect_to @koman, notice: 'Koman was successfully created.' }
        format.json { render :show, status: :created, location: @koman }
        format.js {  }
      else
        format.html { render :new }
        format.json { render json: @koman.errors, status: :unprocessable_entity }
        format.js {  }
      end
    end
  end

  # PATCH/PUT /komen/1
  # PATCH/PUT /komen/1.json
  def update
    respond_to do |format|
      if @koman.update(koman_params)
        format.html { redirect_to @koman, notice: 'Koman was successfully updated.' }
        format.json { render :show, status: :ok, location: @koman }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @koman.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # DELETE /komen/1
  # DELETE /komen/1.json
  def destroy
    @koman.destroy
    respond_to do |format|
      format.html { redirect_to komen_url, notice: 'Koman was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_koman
      @koman = Koman.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def koman_params
      params.require(:koman).permit(:name, :comment)
    end
end
