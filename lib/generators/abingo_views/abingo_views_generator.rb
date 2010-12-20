class AbingoViewsGenerator < Rails::Generators::Base
  source_root File.expand_path('../templates', __FILE__)


  def copy_views
    copy_file "views/dashboard/_experiment.html.erb", "app/views/dashboard/_experiment.html.erb" 
    copy_file "views/dashboard/index.html.erb", "app/views/dashboard/index.html.erb" 
  end
end