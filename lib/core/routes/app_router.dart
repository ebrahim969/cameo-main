import 'package:go_router/go_router.dart';
import 'package:tigor_store/features/admin/data/models/category_model.dart';
import 'package:tigor_store/features/admin/presentation/views/add_product_view.dart';
import 'package:tigor_store/features/auth/presentation/view/sign_up_view.dart';
import 'package:tigor_store/features/home/data/model/product_model.dart';
import 'package:tigor_store/features/home/main_screen.dart';
import 'package:tigor_store/features/home/presentation/view/category_products_view.dart';
import 'package:tigor_store/features/home/presentation/view/home_view.dart';
import 'package:tigor_store/features/home/presentation/view/product_details.dart';
import 'package:tigor_store/features/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:tigor_store/features/splash/view/splash_view.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: "/OnBoardingView",
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: "/SignUpView",
      builder: (context, state) => const SignUpView(),
    ),
    GoRoute(
      path: "/MainScreenView",
      builder: (context, state) => const MainScreenView(),
    ),
    GoRoute(
      path: "/HomeView",
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: "/CategoryProductsView",
      builder: (context, state) => CategoryProductsView(model: state.extra as CategoryModel,),
    ),
    GoRoute(
      path: "/ProductDetailsView",
      builder: (context, state) => ProductDetailsView(model: state.extra as ProductModel,),
    ),
    GoRoute(
      path: "/AddProductView",
      builder: (context, state) => const AddProductView(),
    ),
  ],
);
