class MixesController < ApplicationController
  def index
    mixes = Mix.all
    render json: mixes
  end
end
