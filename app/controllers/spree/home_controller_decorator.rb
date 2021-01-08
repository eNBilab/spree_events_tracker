module Spree::HomeControllerDecorator

  include Spree::PageTracker

  def self.prepend(base)
    base.after_action :track_event, only: [:index]
  end

end

::Spree::HomeController.prepend(Spree::HomeControllerDecorator) if ::Spree::HomeController.included_modules.exclude?(Spree::HomeControllerDecorator)
