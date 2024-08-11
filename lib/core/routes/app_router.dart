import 'package:bookly_app/core/routes/routes.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.initialRoute,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: Routes.homeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: Routes.bookDetailsView,
      builder: (context, state) => const BookDetailsView(),
    ),
  ],
);
