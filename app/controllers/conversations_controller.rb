class ConversationsController < ApplicationController
  include ConversationsHelper
  def index
    @conversations = current_user.conversations
    @followings_without_conversation = current_user.followings - @conversations.map {|conv| conv.recipient(current_user)}
    #@users = User.where.not(id: current_user.id)
    @conversation = @conversations.last
    #@messages = @conversation.messages
    #@messages.where("user_id != ? AND read = ?", current_user.id, false).update_all(read: true)
    #@message = @conversation.messages.new
    #follows_ids = current_user.followings.map {|foll| foll.id}
    #@follows_without_conv = follows_ids - conv_users
    #@follows = User.select {|usr| @follows_without_conv.include?(usr.id)}
    if params[:query].present?
      @search = current_user.conversations_recipients.select {|user| user.full_name.downcase.match(/#{params[:query].downcase}/)}.map {|user| user.find_conversation_with(current_user)}.flatten
    end
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
