class MessagesController < ApplicationController

  before_action do
    @conversation = Conversation.find(params[:conversation_id])
    #@conversation = params[:conversation]
  end

  def index
    @messages = @conversation.messages
    @messages.where("user_id != ? AND read = ?", current_user.id, false).update_all(read: true)
    @message = @conversation.messages.new
  end

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.new(message_params)
    @message.user = current_user
    respond_to do |format|
      if @message.save
        format.js
      else
        format.js
      end
    end
  end

  private
    def message_params
      params.require(:message).permit(:body, :user_id)
    end
end
