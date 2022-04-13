import 'package:flutter_application_learn_get/models/numberAPI.dart';
import 'package:flutter_application_learn_get/service/api_service.dart';

class ApiRepository{
  final Apiservice apiservice;

  ApiRepository({required this.apiservice});

  Future<NumberAPI?> getNumberDataRepository(int number) async{
    final response = await apiservice.getNumberDataService(number);
    // ignore: unnecessary_null_comparison
    if (response!=null){
      final dataNumber = response.data;
      final NumberAPI numberAPI;
      numberAPI = NumberAPI.fromMap(dataNumber!);
      return numberAPI;
    }
    return null;
  }

}