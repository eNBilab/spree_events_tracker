module Spree::HomeControllerDecorator

  include Spree::PageTracker
  track_actions [:index]

end

::Spree::HomeController.prepend(Spree::HomeControllerDecorator) if ::Spree::HomeController.included_modules.exclude?(Spree::HomeControllerDecorator)
