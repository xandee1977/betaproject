require 'rho/rhocontroller'
require 'helpers/browser_helper'

class UserAnswerController < Rho::RhoController
  include BrowserHelper

  # GET /UserAnswer
  def index
    @useranswers = UserAnswer.find(:all)
    render :back => '/app'
  end

  # GET /UserAnswer/{1}
  def show
    @useranswer = UserAnswer.find(@params['id'])
    if @useranswer
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /UserAnswer/new
  def new
    @useranswer = UserAnswer.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /UserAnswer/{1}/edit
  def edit
    @useranswer = UserAnswer.find(@params['id'])
    if @useranswer
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /UserAnswer/create
  def create
    @useranswer = UserAnswer.create(@params['useranswer'])
    redirect :action => :index
  end

  # POST /UserAnswer/{1}/update
  def update
    @useranswer = UserAnswer.find(@params['id'])
    @useranswer.update_attributes(@params['useranswer']) if @useranswer
    redirect :action => :index
  end

  # POST /UserAnswer/{1}/delete
  def delete
    @useranswer = UserAnswer.find(@params['id'])
    @useranswer.destroy if @useranswer
    redirect :action => :index  
  end
end
