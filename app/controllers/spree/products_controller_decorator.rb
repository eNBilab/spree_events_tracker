module Spree::ProductsControllerDecorator

  include Spree::PageTracker

  def self.prepended(base)
    base.after_action :track_event, only: [:show, :index]
  end

end

::Spree::ProductsController.prepend(Spree::ProductsControllerDecorator)
