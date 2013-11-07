symptomChecker
==============

a Html/Javascript interface that interacts with server-side Clips interface using HTML5 WebSockets

Details
-------
server-side controller takes advantage of websocketd project (https://github.com/joewalnes/websocketd/) to wrap the CLIPS interface to a WebSocket interface.
In order to start server-side CLIPS interface execute:
./websocketd --port=8088 /Applications/CLIPS/./clips -f troubleshooter.clp
where 8088 is the desired port /Applications/CLIPS/./clips is the path to the clips executable and troubleshooter.clp is the clips source.

Download the right version of webSocketd from https://github.com/joewalnes/websocketd/wiki/Download-and-install