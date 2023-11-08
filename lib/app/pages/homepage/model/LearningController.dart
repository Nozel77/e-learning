import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'LearningModel.dart';

class LearningController extends GetxController{
  var isLoading = true.obs;
  RxList<LearningResponseModels> learningResponseModel = <LearningResponseModels>[].obs;

  @override
  void onInit() {
    fetchLearning();
    super.onInit();
  }

  fetchLearning() async {
    final api = 'https://zell-learning.000webhostapp.com/api/learning';
    try{
      final response = await http.get(
        Uri.parse(api),
      );
      if (response.statusCode == 200) {
        learningResponseModel.value = [learningResponseModelsFromJson(response.body)];
        isLoading(false);
        print('success : ${response.statusCode}');
        print('success : ${learningResponseModel.value[0].data[0].title}');
      } else {
        print('error : ${response.statusCode}');
      }
    } catch(e){
      print(e);
    }
  }
}