class SecretsController < ApplicationController
  before_action :require_login

  def show
    redirect_to '/secret'
  end

  private

  def require_login
    return head(:forbidden) unless session.include? :name
  end
end
