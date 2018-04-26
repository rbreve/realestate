class MessageMailer < ApplicationMailer
	def contact
		@user = params[:message]
		 
		mail(to: @message.email, subject: 'Interes en Propiedad', )
	end
end
