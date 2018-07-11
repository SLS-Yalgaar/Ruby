$LOAD_PATH << '../'
require 'yalgaar'

########################################################Callbacks#########################################	
#Callback for Connection
$connectionCallback = -> (arg0) { connectionCallback(arg0) } 
def connectionCallback(arg0)
	puts arg0
end

$subscribeReturnMessageCallback = -> (arg0) { subscribeReturnMessageCallback(arg0) } 	
def subscribeReturnMessageCallback(message)
	#No a presence must me json & enable 
	puts "subscribeReturnMessageCallback@@@"
	puts message
	#TODO
end

$errorMsgCallback = -> (arg0) { errorMsgCallback(arg0) } 
def errorMsgCallback(message)
	puts "errorMsgCallback"
	puts message
	#TODO
end

$presenceMessageCallback = -> (arg0) { presenceMessageCallback(arg0) } 
def presenceMessageCallback(message)
	#must me json & enable 
	puts "presenceMessageCallback"
	puts message
	#TODO
end

########################################################User Area for Calling Pub-sub######################################			
yalgaarClient = Yalgaar.new

#yalgaarConnect(clientKey,isSecure,$connectionCallback)#
yalgaarClient.yalgaarConnect("YourClientKey",0,$connectionCallback)
sleep 2

#yalgaarSubcribe(channel/channels,$subscribeReturnMessageCallback,$presenceMessageCallback,$errorMsgCallback)#
#channel
yalgaarClient.yalgaarSubcribe("ChannelName",$subscribeReturnMessageCallback,$presenceMessageCallback,$errorMsgCallback)
#channels
channels=["ChannelName1","ChannelName2"]
yalgaarClient.yalgaarSubcribe(channels,$subscribeReturnMessageCallback,$presenceMessageCallback,$errorMsgCallback)
sleep 2
#yalgaarUnSubcribe(channel/channels)#
#channel
yalgaarClient.yalgaarUnSubcribe("ChannelName")

########################################################END####################################################################
