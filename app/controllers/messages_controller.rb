class MessagesController < ApplicationController

  before_filter :authenticate # , :only => [:create, :destroy]
  
  def create
    @message = current_user.messages.build  # (params[:message])

    @message.content = params[:message][:content]
    @message.recipient_id = params[:message][:recipient_id]
    @message.attachment = params[:message][:attachment]
    
    respond_to do |format|
      if @message.save
        flash[:success] = "Message created!"
        format.html { redirect_to root_path }
      else
        flash[:notice] = "Unable to save message!"
        @feed_items = []
        format.html { render 'pages/home' }
      end
    end
    
  end

  
end


