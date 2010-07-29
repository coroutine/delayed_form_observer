module Coroutine                  #:nodoc:
  module ActionView               #:nodoc:
    module Helpers                #:nodoc:
      module PrototypeHelper      #:nodoc:
        
        # This method builds a delayed form observer using the exact same 
        # arguments as the built-in Rails helper <tt>observe_form</tt>.
        #
        def delayed_observe_form(form_id, options={})
          build_observer "Form.DelayedObserver", form_id, options
        end
        
      end
    end
  end
end