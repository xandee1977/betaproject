require 'rho/rhocontroller'
require 'helpers/browser_helper'

class ThemeController < Rho::RhoController
  include BrowserHelper

  # GET /Theme
  def index
    @themes = Theme.find(:all)
    render :back => '/app'
  end

  # GET /Theme/{1}
  def show
    @theme = Theme.find(@params['id'])
    if @theme
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /Theme/new
  def new
    @theme = Theme.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /Theme/{1}/edit
  def edit
    @theme = Theme.find(@params['id'])
    if @theme
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /Theme/create
  def create
    @theme = Theme.create(@params['theme'])
    redirect :action => :index
  end

  # POST /Theme/{1}/update
  def update
    @theme = Theme.find(@params['id'])
    @theme.update_attributes(@params['theme']) if @theme
    redirect :action => :index
  end

  # POST /Theme/{1}/delete
  def delete
    @theme = Theme.find(@params['id'])
    @theme.destroy if @theme
    redirect :action => :index  
  end
end
