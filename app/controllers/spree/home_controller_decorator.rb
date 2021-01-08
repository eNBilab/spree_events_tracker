module Spree::HomeControllerDecorator

  include Spree::PageTracker

  def self.prepend(base)
    def self.track_actions(actions = [])
      base.after_action :track_event, only: actions
    end
  end

  track_actions [:index]

end

::Spree::HomeController.prepend(Spree::HomeControllerDecorator) if ::Spree::HomeController.included_modules.exclude?(Spree::HomeControllerDecorator)
