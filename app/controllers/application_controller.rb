class ApplicationController < ActionController::Base
  def root
    redirect_to '/daycare'
  end
end
