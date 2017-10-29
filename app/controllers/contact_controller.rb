class ContactController < ApplicationController
  def index
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.valid?
      MessageMailer.new_message(@message).deliver
      redirect_to :index, notice: "Your message has been sent."
    else
      flash[:alert] = "An error occurred while delivering this message. Please fill in all fields."
      @message = Message.new
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:first_name, :surname, :email, :content)
  end
end
