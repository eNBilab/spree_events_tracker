module Spree::ProductsControllerDecorator

  include Spree::PageTracker

  def self.prepend(base)
    base.after_action :track_event, only: [:show, :index]
  end

end

::Spree::ProductsController.prepend(Spree::ProductsControllerDecorator) if ::Spree::ProductsController.included_modules.exclude?(Spree::ProductsControllerDecorator)
