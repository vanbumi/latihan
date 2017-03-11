class ObatController < ApplicationController
  def index
  	@obats =  Obat.all
  end

  def new
  	@obat = Obat.new
  end

  def create
  	@obat = Obat.new(allowed_params)

  	redirect_to obats_url 
  end

  def update
    @obat = Obat.find(params[:id])
    @obat.update_attributes!(allowed_params)

    redirect_to obats_url
  end

  def destroy
    @obat = Obat.destroy(params[:id])

    redirect_to obats_url
  end

  private

  def allowed_params
    params.require(:obat).permit(:name, :price, :suplier)

  end

end
