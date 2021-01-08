module Spree::TaxonsControllerDecorator

  include Spree::PageTracker

  def self.prepend(base)
    def track_actions(actions = [])
      base.after_action :track_event, only: actions
    end
  end

  track_actions [:show]

end

::Spree::TaxonsController.prepend(Spree::TaxonsControllerDecorator) if ::Spree::TaxonsController.included_modules.exclude?(Spree::TaxonsControllerDecorator)
