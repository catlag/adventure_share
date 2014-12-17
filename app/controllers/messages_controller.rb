class MessagesController < ApplicationController
include ApplicationHelper
before_action :confirm_logged_in, :find_user

def index
	@conversation = @user.mailbox.inbox.first
	@receipts = @conversation.receipts_for @user
end

def show

end

def new

end

def create

end

end
