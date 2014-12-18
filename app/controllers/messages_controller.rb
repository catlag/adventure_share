class MessagesController < ApplicationController
include ApplicationHelper
before_action :confirm_logged_in, :find_user

def index

end

def show

end

def new
	@id = params[:id]
	@name = User.find_by_id(@id).username
end

def create
	@user = User.find_by_id(session[:user_id])

	# @receipt = @user.mailbox.receipts.find(params[:receipt])
	# @convo = @user.mailbox.conversations.find_by_id(params[:msg_id])
  @subject = params[:subject]
  @body = params[:body]
  @id = 
  @name = User.find_by_id(params[:id])
  @user.send_message(@name, @body, @subject)
  redirect_to home_path
end

end
