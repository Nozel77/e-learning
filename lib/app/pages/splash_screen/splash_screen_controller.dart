import 'package:e_learning/app/pages/home_page/home_page_dart.dart';
import 'package:e_learning/app/pages/login_page/login_page_view.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreenController extends GetxController{
  late final SharedPreferences prefs;

  @override
  void onInit() {
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async{
    prefs = await SharedPreferences.getInstance();
    Future.delayed(Duration(seconds: 2), () async {
      if(prefs.getString('username') == null){
        Get.off(LoginScreen());
      }else{
        Get.off(Homepage());
      }
    });

  }
}