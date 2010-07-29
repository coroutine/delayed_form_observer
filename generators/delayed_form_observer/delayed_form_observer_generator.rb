class DelayedFormObserverGenerator < Rails::Generator::Base
    
  # This method copies the Prototype extension to the public javascripts directory.
  #
  def manifest
    record do |m|
      m.file "prototype_extension.js", "public/javascripts/prototype_delayed_form_observer.js"
    end
  end
  
end