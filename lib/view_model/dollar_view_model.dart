import 'package:dollar_kurslari/data/service/api_service.dart';
import 'package:dollar_kurslari/model/dollar_model.dart';
import 'package:flutter/cupertino.dart';

class DollarViewModel extends ChangeNotifier{



  List products = [];
  List nbuproducts = [];



  void getAllProducts() async {

    products = await ApiService().getAllProducts();
    print(nbuproducts.isNotEmpty);



  }
  void getNbuProducts() async {
    notifyListeners();
    nbuproducts = await ApiService().getNbuProducts();
    print(nbuproducts.isNotEmpty);

  }
}