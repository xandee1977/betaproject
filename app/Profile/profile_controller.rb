require 'rho/rhocontroller'
require 'helpers/browser_helper'

class ProfileController < Rho::RhoController
  include BrowserHelper

  # GET /Profile
  def index
    @profiles = Profile.find(:all)
    render :back => '/app'
  end

  # GET /Profile/{1}
  def show
    @profile = Profile.find(@params['id'])
    if @profile
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /Profile/new
  def new
    @profile = Profile.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /Profile/{1}/edit
  def edit
    @profile = Profile.find(@params['id'])
    if @profile
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /Profile/create
  def create
    @profile = Profile.create(@params['profile'])
    redirect :action => :index
  end

  # POST /Profile/{1}/update
  def update
    @profile = Profile.find(@params['id'])
    @profile.update_attributes(@params['profile']) if @profile
    redirect :action => :index
  end

  # POST /Profile/{1}/delete
  def delete
    @profile = Profile.find(@params['id'])
    @profile.destroy if @profile
    redirect :action => :index  
  end
end
