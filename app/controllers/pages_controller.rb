class PagesController < ApplicationController
    before_action :authenticate_user!
    
    def dashboard
    end
  
    def sourcing
      @products = Product.all
    end
  
    def media_buying
    end
  end