class MessagesController < ApplicationController
 skip_before_action :verify_authenticity_token

	def new
		@message = Message.new
	end

	def create
		@message = Message.new message_params
		if @message.valid?
			MessageMailer.contact(@message).deliver_now
			redirect_to new_message_url
			flash[:notice] = "Hemos recibido su mensaje, estaremos en contacto pronto."
		else
			redirect_to root_path
			flash[:notice] = "There was an error sending your message. Please try again."
		end
	end

	private
	def message_params
		params.require(:message).permit(:name, :email, :body)
	end
end

