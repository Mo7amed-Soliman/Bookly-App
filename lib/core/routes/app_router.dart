import 'package:bookly_app/core/di/dependency_injection.dart';
import 'package:bookly_app/core/routes/routes.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repo/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_models/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/view_models/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: Routes.initialRoute,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: Routes.homeView,
      builder: (context, state) => MultiBlocProvider(providers: [
        BlocProvider(
          create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
            ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewestBooksCubit(getIt.get<HomeRepoImpl>())..fetchNewestBooks(),
        ),
      ], child: const HomeView()),
    ),
    GoRoute(
      path: Routes.bookDetailsView,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>())
          ..fetchSimilarBooks(
            category: (state.extra as BookModel).volumeInfo!.categories?[0] ??
                (state.extra as BookModel).volumeInfo!.title!,
          ),
        child: BookDetailsView(
          bookModel: state.extra as BookModel,
        ),
      ),
    ),
  ],
);
