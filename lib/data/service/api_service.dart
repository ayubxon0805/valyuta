import 'package:dio/dio.dart';
import 'package:dollar_kurslari/model/dollar_model.dart';
import 'package:dollar_kurslari/model/nbu_model.dart';

class ApiService {

  Future getAllProducts() async {
Dio dio = Dio();
print('response ketdi');
Response response = await dio.get('https://cbu.uz/uz/arkhiv-kursov-valyut/json');
if(response.statusCode == 200){
  print('data keldi');
  List  products = response.data.map((e) => DollarModel.fromJson(e)).toList();
  return products;
}else{
  print('nimadir xato');
}




  }
  Future getNbuProducts() async {
    Dio dio = Dio();
    print('response nbu ketdi');
    Response response = await dio.get('https://nbu.uz/uz/exchange-rates/json');
    if(response.statusCode == 200){
      print('data nbu keldi');
      List  nbuproducts = response.data.map((e) => NbuModel.fromJson(e)).toList();
      return nbuproducts;
    }else{
      print('nimadir xato keldi');
    }




  }

}