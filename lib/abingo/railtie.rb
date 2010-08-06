

  class Railtie < Rails::Railtie
  
    initializer "abingo.initialize" do |app|
      ActionController::Base.send :include, AbingoSugar

      ActionView::Base.send :include, AbingoViewHelper
    end
  
  end
  
