module Spree::HomeControllerDecorator

  include Spree::PageTracker

  def self.prepended(base)
    base.after_action :track_event, only: [:index]
  end

end

::Spree::HomeController.prepend(Spree::HomeControllerDecorator)
