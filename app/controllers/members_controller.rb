class MembersController < ApplicationController
  def index
    @members = SubscriptionEvent.where(:event_type => "subscribed")
    p @members
  end
end