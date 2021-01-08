module Spree::TaxonsControllerDecorator

  include Spree::PageTracker

  def self.prepend(base)
    base.after_action :track_event, only: [:show]
  end

end

::Spree::TaxonsController.prepend(Spree::TaxonsControllerDecorator) if ::Spree::TaxonsController.included_modules.exclude?(Spree::TaxonsControllerDecorator)
