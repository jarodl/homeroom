class Admin::MaterialsController < ApplicationController
  before_filter :require_admin_user
  layout "admin"
  current_tab :materials

  def index
    @materials = Material.all
  end

  def new
    @material = Material.new
  end

  def create
    @material = Material.new(params[:material])
    if @material.save
      flash[:notice] = "Material was successfully created."
      redirect_to admin_materials_path
    else
      render :action => 'new'
    end
  end

  def show
    @material = Material.find(params[:id])
  end

  def edit
  end

  def update
  end

end
