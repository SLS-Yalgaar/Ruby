$LOAD_PATH << '../'
require 'yalgaar'

########################################################Callbacks#########################################	
#Callback for Connection

$connectionCallback = -> (arg0) { connectionCallback(arg0) } 
def connectionCallback(arg0)
	puts arg0
end

########################################################User Area for Calling Pub-sub######################################			
yalgaarClient = Yalgaar.new

#yalgaarConnect(clientKey,isSecure,$connectionCallback)#
yalgaarClient.yalgaarConnect("YourClientKey",0,$connectionCallback)

#yalgaarPublish(channel,message)#
yalgaarClient.yalgaarPublish("ChannelName","This is Yalgaar Ruby SDK Example")

########################################################END####################################################################
