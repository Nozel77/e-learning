import 'dart:ffi';
import 'package:dio/dio.dart' as dio;
import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'learning_model.dart';

class LearningController extends GetxController{
  var isLoading = true.obs;
  var learningResponseModel = <Learning>[].obs;

  @override
  void onInit() {
    getTeaSeries();
    super.onInit();
  }

  Future<void> getTeaSeries() async {
    try {
      isLoading.value = true;
      final dio.Dio dioInstance = dio.Dio();
      final dio.Response response =
          await dioInstance.get('https://zell-learning.000webhostapp.com/api/learning');

      if (response.statusCode == 200) {
        final List<dynamic> teaList = response.data["data"];
        learningResponseModel.value =
            teaList.map((json) => Learning.fromJson(json)).toList();
        print(learningResponseModel.value[0].title);
      } else {
        print("Failed to fetch tea. Status code: ${response.statusCode}");
      }
    } catch (error) {
      print("Error while fetching tea: $error");
    } finally {
      isLoading.value = false;
    }
  }
}