class PagesController < ApplicationController
    before_action :authenticate_user!
    
    def dashboard
    end
  
    def sourcing
    end
  
    def media_buying
    end
  end