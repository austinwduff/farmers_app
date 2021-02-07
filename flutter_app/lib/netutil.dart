
import 'package:shared_preferences/shared_preferences.dart';

class NetUtil {

  static final String URL_API_BASE = "www.aduff.us:5000";
  static final String URL_REGISTER_LOGIN = "/api/auth/register";

  static final String KEY_USERID = "USERID";

  static String activeUserId = "";
  static SharedPreferences prefs;

  static void setup() async {
    prefs = await SharedPreferences.getInstance();
  }

  static void setString(String key, String value) {
    prefs.setString(key, value);
  }

  static String getString(String key) {
    return prefs.getString(key);
  }

}