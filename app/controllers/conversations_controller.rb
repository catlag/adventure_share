class ConversationsController < ApplicationController
include ApplicationHelper
before_action :confirm_logged_in, :find_user

def show
	@msg = @user.mailbox.inbox.find_by_id(params[:id])
	@receipts = @msg.receipts_for @user
	@receipts.each do |receipt|
		@id = receipt.notification.sender_id
		@receipt = receipt
	end
	@sender = User.find_by_id(@id)
end

def new

end

def create

end
	
end
