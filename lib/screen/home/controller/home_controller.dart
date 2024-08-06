import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:getx/utils/helper/shared_%20preferences_helper.dart';

class HomeController extends GetxController
{
  RxInt i=0.obs;
  RxString themeName ="system".obs;

  SharedHelper helper =SharedHelper();

  void setThemeData()
  {
    helper.setTheme(themeName.value);
  }
  Future<void> getThemeData()
  async {
   themeName.value =await helper.getTheme();
  }

}