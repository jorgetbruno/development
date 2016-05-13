class MedicsController < ApplicationController
  def index
  end
  def new
    @medic = Medic.new
  end

end
