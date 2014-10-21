package googleplayservices;
import openfl.utils.JNI;

/**
 * ...
 * @author Thomas B
 */
class GooglePlayServices
{
	
	#if android
	static var jni_getAvailability : Dynamic = JNI.createStaticMethod("org.haxe.extension.GooglePlayServices", "getAvailability", "()I");
	static var jni_showErrorDialog : Dynamic = JNI.createStaticMethod("org.haxe.extension.GooglePlayServices", "showErrorDialog", "(I)V");
	#end

	public static function getAvailability() : Int {
		#if android
			return jni_getAvailability(); 
		#end
	}
	
	public static function showErrorDialog(code : Int) {
		#if android
			jni_showErrorDialog(code);
		#end
	}
	
}