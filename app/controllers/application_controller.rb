class ApplicationController < ActionController::Base
  def root
    redirect_to '/kids'
  end
end
