module Spree::TaxonsControllerDecorator

  include Spree::PageTracker

  def self.prepended(base)
    base.after_action :track_event, only: [:show]
  end

end

::Spree::TaxonsController.prepend(Spree::TaxonsControllerDecorator)
