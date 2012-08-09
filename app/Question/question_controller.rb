require 'rho/rhocontroller'
require 'helpers/browser_helper'

class QuestionController < Rho::RhoController
  include BrowserHelper

  # GET /Question
  def index
    @questions = Question.find(:all)
    render :back => '/app'
  end

  # GET /Question/{1}
  def show
    @question = Question.find(@params['id'])
    if @question
      render :action => :show, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # GET /Question/new
  def new
    @question = Question.new
    render :action => :new, :back => url_for(:action => :index)
  end

  # GET /Question/{1}/edit
  def edit
    @question = Question.find(@params['id'])
    if @question
      render :action => :edit, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # POST /Question/create
  def create
    @question = Question.create(@params['question'])
    redirect :action => :index
  end

  # POST /Question/{1}/update
  def update
    @question = Question.find(@params['id'])
    @question.update_attributes(@params['question']) if @question
    redirect :action => :index
  end

  # POST /Question/{1}/delete
  def delete
    @question = Question.find(@params['id'])
    @question.destroy if @question
    redirect :action => :index  
  end

  # Exibe uma questão randomica
  # TODO: randomizar entre as questões que o usuario
  # nao respondeu aind
  def question_rand
    @question = Question.find(:all).shuffle.first
    if @question
      render :action => :question_rand, :back => url_for(:action => :index)
    else
      redirect :action => :index
    end
  end

  # Recebe a resposta selecionada e a certa
  # compara e exibe o resultado
  def verify_answer
    @question = Question.find(@params["id"])
    if @question.answer == @params["opt"]
      @message = "Parabéns você acertou!"
      @correct = true
    else
      @message = "Opa Resposta errada."
      @correct = false
    end
    render :action => :verify_answer, :back => url_for(:action => :question_rand)
  end

end
