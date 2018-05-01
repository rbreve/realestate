class MessagesController < ApplicationController
 skip_before_action :verify_authenticity_token

	def new
		@message = Message.new
	end

	def create
		@message = Message.new message_params
			MessageMailer.contact(@message).deliver_now
			redirect_to root_path
			flash[:notice] = "Hemos recibido su mensaje, estaremos en contacto pronto."
	end

	private
	def message_params
		params.require(:message).permit(:name, :email, :body)
	end
end


