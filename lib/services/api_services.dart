import 'package:advance_flutter_exam/headers.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  ApiServices._();
  static final ApiServices apiServices = ApiServices._();

  String api =
      'https://pixabay.com/api/?key=43825862-ab01fa05493d9526f784d42ac';

  initApi() async {
    List<Wallpaper> wallpaperList = [];
    http.Response response = await http.get(Uri.parse(api));

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['hits'];
      wallpaperList = data
          .map(
            (e) => Wallpaper.fromJson(
              e,
            ),
          )
          .toList();
    }
    return wallpaperList;
  }
}
