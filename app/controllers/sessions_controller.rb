class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name] && params[:name] != ''
      if session[:name] = params[:name]
        redirect_to '/'
      else
        params[:name] = session[:name]
        redirect_to '/'
      end
    else
      redirect_to '/login'
  end

  def destroy
    if session[:name]
      session.delete :name
    end
      redirect_to '/login'
  end
end
