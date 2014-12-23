class ConversationsController < ApplicationController
include ApplicationHelper
before_action :confirm_logged_in, :find_user

def show
	@msg = @user.mailbox.conversations.find_by_id(params[:id])
	@msg_id = @msg.id
	@ppl = @msg.participants
	@participants = []
	@recipients = []
	@receipts = @msg.receipts_for @user

		@ppl.each do |person|
			if person.id != @user.id
				@participants.push(User.find_by_id(person.id))
			end
		end

		@participants.each do |person|
			@recipients.push(person.username)
		end
end

def new

end

def create
	@user = User.find_by_id(session[:user_id])
	# @receipt = @user.mailbox.receipts.find(params[:receipt])
	@convo = @user.mailbox.conversations.find_by_id(params[:msg_id])
  @subject = params[:subject]
  @body = params[:body]
  @id = params[:id]
  @user.reply_to_conversation(@convo, @body, @subject)
  redirect_to :back
end

def destroy
	@user = User.find_by_id(session[:user_id])
	@convo = @user.mailbox.conversations.find_by_id(params[:msg_id])
	
  @convo.mark_as_deleted(@user) 
	# @user.mark_as_deleted @convo
	if @convo.is_deleted?(@user)
		flash[:success] = "Trip deleted"
	    redirect_to messages_path
	end


end

end
