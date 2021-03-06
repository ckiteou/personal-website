class MessageMailer < ActionMailer::Base

  default from: "Personal Website <ckiteou22@gmail.com>"
  default to: "Costas Kiteou <ckiteou22@gmail.com>"

  def new_message(message)
    @message = message

    mail subject: "Message from #{message.first_name} #{message.surname}"
  end

end
