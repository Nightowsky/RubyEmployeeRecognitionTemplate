# frozen_string_literal: true
module Admin 
   
    class DashboardController < ApplicationController
    before_action :authenticate_admin_user!
    layout 'admin'   

    def dashboard
    end

    def index
    end
  end
end

    