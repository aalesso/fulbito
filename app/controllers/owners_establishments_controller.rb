class OwnersEstablishmentsController < ApplicationController
  def index
    @owners_establishments = OwnersEstablishment.all
  end

  def show
    @owners_establishment = OwnersEstablishment.find(params[:id])
  end
end
