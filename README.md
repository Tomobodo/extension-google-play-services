googleplay-openfl
=================

A lot of google services now rellie on google-play-services , such as admob.
Using the google-play-services.jar directly in the depencies/libs folder is not enough to correctly integrate google-play.
It has to be included via the project.properties file of the extension.
I made this extension so that it's easier to update google-play-services for every extensions relying on it.
This prevent every google extension from including different version of google-play-services, wich migh create troubles.

**how to use**

1. Clone this repo ```git clone git@github.com:TBaudon/googleplayservices-openfl.git```
2. Use ```haxelib dev googleplayservices path/to/clone```
3. add ```<haxelib name="googleplayservices" />``` to your project before any other google extension.

**google service extensions**

1. [Admob](https://github.com/TBaudon/admob-openfl)
