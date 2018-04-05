class OwnersEstablishmentsController < ApplicationController
  def index
    @owners_establishments = OwnersEstablishment.page(params[:page]).per(10)
  end

  def show
    @owners_establishment = OwnersEstablishment.find(params[:id])
  end
end
