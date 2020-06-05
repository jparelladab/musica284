class MessagesController < ApplicationController
  include ApplicationHelper

  def index
    @user_ordered_messages = (current_user.sent_messages + current_user.received_messages).sort_by {|msg| msg.created_at}
  end

end
