class DjsController < ApplicationController

  def index
    djs = Dj.all
    render json: dj, include: ["liked_mixes"]
  end

  def show
    dj = Dj.find_by_id(params[:id])
    render json: dj, include: ["liked_mixes"]
  end

  def edit
  end

  def update
  end

end
