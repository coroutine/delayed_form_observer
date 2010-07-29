class DelayedFormObserverGenerator < Rails::Generator::Base
  
  #----------------------------------------------------------------
  # Public Class Methods
  #----------------------------------------------------------------
  
  # This method tells rails where to find the templates directory.
  #
  def self.source_root
    @source_root ||= File.expand_path('../templates', __FILE__)
  end
  
  
  #----------------------------------------------------------------
  # Public Instance Methods
  #----------------------------------------------------------------
  
  # This method copies the Prototype extension to the public javascripts directory.
  #
  def copy_javascripts
    copy_file "prototype_extension.js", "public/javascripts/prototype_delayed_form_observer.js"
  end

end