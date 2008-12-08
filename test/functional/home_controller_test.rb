require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  
  context "A Home controller" do
    
    context "on GET to index" do
      setup do
        get :index
      end
      
      should_respond_with :success
    end
    
  end
  
end
