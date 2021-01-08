module Spree::TaxonsControllerDecorator

  include Spree::PageTracker
  track_actions [:show]

end

::Spree::TaxonsController.prepend(Spree::TaxonsControllerDecorator) if ::Spree::TaxonsController.included_modules.exclude?(Spree::TaxonsControllerDecorator)
