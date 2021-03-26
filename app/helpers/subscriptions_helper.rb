module SubscriptionsHelper
  def user_supscribed?(event)	
  	event.subscriptions.exists?(user: current_user)
  end
end
