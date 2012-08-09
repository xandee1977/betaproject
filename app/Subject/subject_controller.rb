require 'rho/rhocontroller'
require 'helpers/browser_helper'

class SubjectController < Rho::RhoController
  include BrowserHelper

  # GET /Subject
  def index
    @subjects = Subject.find(:all)
    render :back => '/app'
  end

  # GET /Subject/{1}
  def show
    @subject = Subject.find(@params['id'])
    if @subject
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /Subject/new
  def new
    @subject = Subject.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /Subject/{1}/edit
  def edit
    @subject = Subject.find(@params['id'])
    if @subject
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /Subject/create
  def create
    @subject = Subject.create(@params['subject'])
    redirect :action => :index
  end

  # POST /Subject/{1}/update
  def update
    @subject = Subject.find(@params['id'])
    @subject.update_attributes(@params['subject']) if @subject
    redirect :action => :index
  end

  # POST /Subject/{1}/delete
  def delete
    @subject = Subject.find(@params['id'])
    @subject.destroy if @subject
    redirect :action => :index  
  end
end
