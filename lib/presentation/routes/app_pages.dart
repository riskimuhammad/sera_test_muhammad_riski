import 'package:get/get.dart';
import 'package:test_muhammad_riski/domain/bindings/splash_binding.dart';
import 'package:test_muhammad_riski/presentation/routes/app_routes.dart';
import 'package:test_muhammad_riski/presentation/screens/cart/cart_screen.dart';
import 'package:test_muhammad_riski/presentation/screens/product/detail_product_screen.dart';
import 'package:test_muhammad_riski/presentation/screens/product/product_screen.dart';
import 'package:test_muhammad_riski/presentation/screens/search/search_screen.dart';
import 'package:test_muhammad_riski/presentation/screens/signin/signin_screen.dart';
import 'package:test_muhammad_riski/presentation/screens/splash/splash_screen.dart';

class AppPages {
  static final pages = [
    GetPage(
        name: AppRoutes.inital,
        page: () => SplahScreen(),
        binding: SplashBinding()),
    GetPage(
      name: AppRoutes.detailProduct,
      page: () => DetailProductScreen(),
    ),
    GetPage(
      name: AppRoutes.product,
      page: () => ProductScreen(),
    ),
    GetPage(
      name: AppRoutes.cart,
      page: () => CartScreen(),
    ),
    GetPage(
      name: AppRoutes.search,
      page: () => SearchScreen(),
    ),
    GetPage(
      name: AppRoutes.signin,
      page: () => SigninScreen(),
    )
  ];
}
