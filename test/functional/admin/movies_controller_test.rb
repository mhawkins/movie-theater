require 'test_helper'

class Admin::MoviesControllerTest < ActionController::TestCase
  
  context "An Admin::MoviesController" do
    
    context "not logged in" do
      
      context "on GET to index" do
        setup do
          get :index
        end
        
        should_redirect_to "new_session_path"
      end
      
      context "on GET to new" do
        setup do
          get :new
        end
        
        should_redirect_to "new_session_path"
      end
      
      context "on POST to create" do
        setup do
          post :create
        end
        
        should_redirect_to "new_session_path"
      end
      
      context "on GET to edit" do
        setup do
          get :edit
        end
        
        should_redirect_to "new_session_path"
      end
      
      context "on PUT to update" do
        setup do
          put :update
        end
        
        should_redirect_to "new_session_path"
      end
      
      context "on DELETE to destroy" do
        setup do
          delete :destroy
        end
        
        should_redirect_to "new_session_path"
      end
      
    end
    
    context "logged in" do
      
      setup do
        login_as :quentin
      end
      
      context "on GET to index" do
        setup do
          get :index
        end
        
        should_render_template :index
        should_assign_to :movies
      end
      
      context "on GET to new" do
        setup do
          get :new
        end
        
        should_render_template :new
        should_assign_to :movie
        should_render_a_form
      end
      
    end
    
  end
  
end
