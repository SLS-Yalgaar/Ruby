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
sleep 2
yalgaarClient.yalgaarDisconnect($connectionCallback)
sleep 2
#~ 
#yalgaarConnect(clientKey,isSecure,UUID,$connectionCallback)#
yalgaarClient.yalgaarConnect("YourClientKey",1,"UserID",$connectionCallback)
sleep 2
yalgaarClient.yalgaarDisconnect($connectionCallback)
sleep 2

#yalgaarConnect(clientKey,isSecure,AESSecretKey,AESType,$connectionCallback)#
yalgaarClient.yalgaarConnect("YourClientKey",1,"UserID",128,$connectionCallback)
sleep 2
yalgaarClient.yalgaarDisconnect($connectionCallback)
sleep 2

#yalgaarConnect(clientKey,isSecure,UUID,AESSecretKey,AESType,$connectionCallback)#
yalgaarClient.yalgaarConnect("YourClientKey",1,"UserID","SystemSystemSLSS",128,$connectionCallback)
sleep 2
yalgaarClient.yalgaarDisconnect($connectionCallback)
########################################################END####################################################################
