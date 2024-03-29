import 'package:test_muhammad_riski/data/models/product/cart_model.dart';
import 'package:test_muhammad_riski/data/models/product/product_model.dart';
import 'package:test_muhammad_riski/data/providers/network/model/api_results.dart';

import '../../data/models/auth/signin_model.dart';

abstract class Repository {
  Future<ApiResult> signin(SigninModel model);
  Future<ApiResult> sessionAuth(SigninModel model);
  Future<ApiResult> getUserByID(SigninModel model);

  Future<ApiResult> getAllCategory();
  Future<ApiResult> getProduct(ProductModel model);
  Future<ApiResult> getProductById(ProductModel model);
  Future<ApiResult> getProductByCategories(String categories);
  Future<ApiResult> addCart(CartModel model);
  Future<ApiResult> getCart(String limit);
}
