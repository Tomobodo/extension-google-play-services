google-play-services
=================

A lot of google services now rellie on google-play-services , such as admob.
Using the google-play-services.jar directly in the depencies/libs folder is not enough to correctly integrate google-play.
It has to be included via the project.properties file of the extension.
I made this extension so that it's easier to update google-play-services for every extensions relying on it.
This prevent every google extension from including different version of google-play-services, wich migh create troubles.

**how to use**

1. Clone this repo ```git clone git@github.com:TBaudon/extension-google-play-services.git```
2. Use ```haxelib dev google-play-services path/to/clone```
3. Add ```<haxelib name="google-play-services" />``` to your project before any other google extension.
4. You can check google-play-services availability with 
```
var availibitily = GooglePlayServices.getAvailability();
if(availibitily != 0) { // not available
	GooglePlayServices.showErrorDialog(availibitily);
}else{
	// your code using google api.
}
```	

**google service extensions**

1. [Admob](https://github.com/TBaudon/admob-openfl)
2. [DFP](https://github.com/TBaudon/exension-dfp)
