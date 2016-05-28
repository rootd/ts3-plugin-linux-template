ts3-plugin-linux-template
==============

This is a template to create TeamSpeak 3 plugins for Linux systems using make, as TeamSpeak offers no proper way to do so.

Compiling
--------------

You can compile your TeamSpeak 3 plugin using
	make all

Note: You might want to edit your Makefile and change TARGET to equal your plugin's name.

Installing
--------------

After successful compiling there will be a shared library called <targetname>.so in the /out folder. You need to copy this file to <teamspeak directory>/plugins/. Then open TeamSpeak and enable it under Settings->Plugins.


