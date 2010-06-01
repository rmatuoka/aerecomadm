class Admin::PrintsController < ApplicationController
  before_filter :autentica
  
  uses_tiny_mce :options => {
                              :theme => 'advanced',
                              :theme_advanced_resizing => true,
                              :theme_advanced_resize_horizontal => false,
                              :plugins => %w{ table fullscreen }
                            }
  
  layout "admin"
  
  def index
    @Prints = Print.find(:all)
  end

  def show
    @Print = Print.find(params[:id])
  end
  
  def new
    @Print = Print.new
  end

  def create
    @Print = Print.create(params[:print])
    
    if @Print.save
      redirect_to admin_prints_path
    else
      flash[:msg] = "Erro ao inserir os dados. Verifique os erros."
      render :action => "new"
    end
  end

  def edit
    @Print = Print.find(params[:id])
  end
  
  def update
    @Print = Print.find(params[:id])
    @Print.attributes = params[:print]
    
    if @Print.save
      redirect_to admin_prints_path
    else
      flash[:msg] = "Erro ao atualizar os, verifique os erros."
      render :action => "edit"
    end
  end

  def destroy
    @Print = Print.find(params[:id])
    
    if @Print.destroy
      redirect_to admin_prints_path
    end
  end

  def autentica
    if session[:logged]
      true
    else
      redirect_to new_admin_session_path
    end
  end
end
