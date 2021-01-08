module Spree::ProductsControllerDecorator

  include Spree::PageTracker
  track_actions [:show, :index]

end

::Spree::ProductsController.prepend(Spree::ProductsControllerDecorator) if ::Spree::ProductsController.included_modules.exclude?(Spree::ProductsControllerDecorator)
