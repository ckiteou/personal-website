class MessagesController < ApplicationController

    def create
      @message = Message.new(message_params)
      if @message.valid?
        MessageMailer.new_message(@message).deliver
        @message = Message.new
        redirect_to contact_index_path, notice: "Your message has been sent."
      else
        flash[:alert] = "An error occurred while delivering this message."
        @message = Message.new
        render 'contact/index'
      end
    end

    private

    def message_params
      params.require(:message).permit(:first_name, :surname, :email, :content)
    end

end
