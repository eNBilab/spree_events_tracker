module Spree::ProductsControllerDecorator

  include Spree::PageTracker

  def self.prepend(base)
    def track_actions(actions = [])
      base.after_action :track_event, only: actions
    end
  end

  track_actions [:show, :index]

end

::Spree::ProductsController.prepend(Spree::ProductsControllerDecorator) if ::Spree::ProductsController.included_modules.exclude?(Spree::ProductsControllerDecorator)
