class ConversationsController < ApplicationController
  #include UsersHelper
  def index
    @conversations = Conversation.where("sender_id = ? OR receiver_id = ?", current_user.id, current_user.id)
    #@users = User.where.not(id: current_user.id)
    @conversation = @conversations.last
    #@messages = @conversation.messages
    #@messages.where("user_id != ? AND read = ?", current_user.id, false).update_all(read: true)
    #@message = @conversation.messages.new
    conv_users = @conversations.map {|conversation| (conversation.sender_id == current_user.id) ? conversation.receiver_id : conversation.sender_id}
    follows_ids = current_user.followings.map {|foll| foll.id}
    @follows_without_conv = follows_ids - conv_users
    @follows = User.select {|usr| @follows_without_conv.include?(usr.id)}
  end

  def create
    if Conversation.between(params[:sender_id], params[:receiver_id]).present?
      @conversation = Conversation.between(params[:sender_id], params[:receiver_id]).first
    else
      @conversation = Conversation.create!(conversation_params)
    end

    redirect_to conversations_path
  end

  private
    def conversation_params
      params.permit(:sender_id, :receiver_id)
    end
end
