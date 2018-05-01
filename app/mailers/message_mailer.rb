class MessageMailer < ApplicationMailer
	def contact(message)
		@message = message
		mail(to: "rbreve@gmail.com", subject: 'Interes en Propiedad', )
	end
end
