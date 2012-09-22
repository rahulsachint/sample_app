class MessagesController < ApplicationController

  before_filter :authenticate # , :only => [:create, :destroy]
  
  def create
    @message = current_user.messages.build(params[:message])
    
    respond_to do |format|
      if @message.save
        flash[:success] = "Message created!"
        format.html { redirect_to root_path }
        format.js
      else
        @feed_items = []
        format.html { render 'pages/home' }
      end
    end
    
  end

  
end


