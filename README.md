# Tcl_TCP_Server
My own s*show
This was a high-school project for IT2.
Multiplayer game.

Server for the TOH-Client.
It is a real s*show, arrays didn't work for me in tcl, so time constraints got to me.
Since I was creating a Multiplayer game for the project I also had to create the server for it, however Actionscript3/Flash (Actionscript 3 was used by our school) - Does not have API support for server-based stuff, so it doesn't have "socket_listen" etc, so I decided to use Tcl instead of C - for portability and quicker to deploy.
Using this I found out that despite what Actionscript 3 Bible says, AC3 does not in fact flush the buffer upon read - you must manually flush it, this caused me problems and spawned the client.tcl file for debugging purposes.

Server.tcl and Client.tcl is under the GNU GPLv3.
![tclserv](https://user-images.githubusercontent.com/97528297/149073460-49aeaa3c-f22e-4ce6-9e78-9ec24b85a279.PNG)

