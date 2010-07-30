require "rails/generators"


class DelayedFormObserverGenerator < Rails::Generators::Base

  # This call establishes the path to the templates directory.
  #
  def self.source_root 
    File.join(File.dirname(__FILE__), "templates")
  end


  # This method copies javascript files to the corresponding 
  # public directories.
  #
  def generate_assets
    copy_file "prototype_extension.js", "public/javascripts/prototype_delayed_form_observer.js"
  end
  
end