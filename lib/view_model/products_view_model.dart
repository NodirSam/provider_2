import 'package:flutter/cupertino.dart';
import 'package:provider_2/service/api_service/api_service.dart';

import '../data/models/product_model/product_model.dart';

class ProductsViewModel extends ChangeNotifier{
  List products = [];
  bool isLoading = false;

  void getAllProducts() async {
    changeLoadingState();
    products = await ApiService().getAllProducts();
    changeLoadingState();
  }

  void changeLoadingState(){
    isLoading != isLoading;
    notifyListeners();
  }

}