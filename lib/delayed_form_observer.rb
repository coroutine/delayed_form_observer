# require external gems
require "action_pack"


# require helpers
require File.dirname(__FILE__) + "/delayed_form_observer/helpers"


# add action view extensions
ActionView::Base.module_eval { include Coroutine::ActionView::Helpers::PrototypeHelper }