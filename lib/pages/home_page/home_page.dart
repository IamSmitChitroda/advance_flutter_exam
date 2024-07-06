import 'package:advance_flutter_exam/controller/api_controller.dart';
import 'package:advance_flutter_exam/headers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ApiController apiController = Get.put(ApiController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Obx(
          () {
            return ListView.builder(
              itemBuilder: (controller, index) => ListTile(
                title: Text(apiController.wallpaperList[index].url),
              ),
            );
          },
        ),
      ),
    );
  }
}
