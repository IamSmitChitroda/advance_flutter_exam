import 'package:advance_flutter_exam/headers.dart';

class ApiController {
  ApiController() {
    fetchData();
  }

  RxList<Wallpaper> wallpaperList = <Wallpaper>[].obs;

  fetchData() async {
    wallpaperList(await ApiServices.apiServices.initApi());
  }
}
