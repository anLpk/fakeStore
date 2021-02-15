class JerseysController < ApplicationController
  def index
    @jerseys = Jersey.all
  end

  def show
    @jersey = Jersey.find(params[:id])
  end
end
