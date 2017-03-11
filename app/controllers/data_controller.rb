class DataController < ApplicationController
  def enter
  end

  def search
    query ="%" + params[:search] + "%"
		@auto = Koman.where('name LIKE ?', query).pluck(:name)
    puts @auto.inspect
  end

end
