require 'rho/rhocontroller'
require 'helpers/browser_helper'

class UserScoreController < Rho::RhoController
  include BrowserHelper

  # GET /UserScore
  def index
    @userscores = UserScore.find(:all)
    render :back => '/app'
  end

  # GET /UserScore/{1}
  def show
    @userscore = UserScore.find(@params['id'])
    if @userscore
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /UserScore/new
  def new
    @userscore = UserScore.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /UserScore/{1}/edit
  def edit
    @userscore = UserScore.find(@params['id'])
    if @userscore
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /UserScore/create
  def create
    @userscore = UserScore.create(@params['userscore'])
    redirect :action => :index
  end

  # POST /UserScore/{1}/update
  def update
    @userscore = UserScore.find(@params['id'])
    @userscore.update_attributes(@params['userscore']) if @userscore
    redirect :action => :index
  end

  # POST /UserScore/{1}/delete
  def delete
    @userscore = UserScore.find(@params['id'])
    @userscore.destroy if @userscore
    redirect :action => :index  
  end
end
