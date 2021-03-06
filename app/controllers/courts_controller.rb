class CourtsController < ApplicationController
  before_action :current_owners_establishment_must_be_court_owner, :only => [:show, :edit, :update, :destroy]

  def current_owners_establishment_must_be_court_owner
    court = Court.find(params[:id])

    unless current_owners_establishment == court.owner
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @q = Court.ransack(params[:q])
    @courts = @q.result(:distinct => true).includes(:owner, :slots).page(params[:page]).per(10)

    render("courts/index.html.erb")
  end

  def show
    @slot = Slot.new
    @court = Court.find(params[:id])

    render("courts/show.html.erb")
  end

  def new
    @court = Court.new

    render("courts/new.html.erb")
  end

  def create
    @court = Court.new

    @court.owner_id = params[:owner_id]
    @court.identification = params[:identification]
    @court.images = params[:images]
    @court.capacity = params[:capacity]

    save_status = @court.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/courts/new", "/create_court"
        redirect_to("/courts")
      else
        redirect_back(:fallback_location => "/", :notice => "Court created successfully.")
      end
    else
      render("courts/new.html.erb")
    end
  end

  def edit
    @court = Court.find(params[:id])

    render("courts/edit.html.erb")
  end

  def update
    @court = Court.find(params[:id])
    @court.identification = params[:identification]
    @court.images = params[:images]
    @court.capacity = params[:capacity]

    save_status = @court.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/courts/#{@court.id}/edit", "/update_court"
        redirect_to("/courts/#{@court.id}", :notice => "Court updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Court updated successfully.")
      end
    else
      render("courts/edit.html.erb")
    end
  end

  def destroy
    @court = Court.find(params[:id])

    @court.destroy

    if URI(request.referer).path == "/courts/#{@court.id}"
      redirect_to("/", :notice => "Court deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Court deleted.")
    end
  end
end
