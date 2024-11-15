import "package:flutter/material.dart";
import "package:flutter_animations/screens/screens.dart";
import "package:go_router/go_router.dart";

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const HomeScreen();
        },
        pageBuilder: defaultPageBuilder(const HomeScreen()),
        routes: const [
          // GoRoute(
          //   path: 'detail/:id',
          //   builder: (BuildContext context, GoRouterState state) {
          //     // final id = state.pathParameters['id'];
          //     return const DetailScreen();
          //   },
          //   pageBuilder: defaultPageBuilder(const DetailScreen()),
          // ),
        ]),
  ],
  errorBuilder: (context, state) {
    return const Scaffold(
      body: Center(
        child: Text("Error:::"),
      ),
    );
  },
);

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

Page<dynamic> Function(BuildContext, GoRouterState) defaultPageBuilder<T>(
        Widget child) =>
    (BuildContext context, GoRouterState state) {
      return buildPageWithDefaultTransition<T>(
        context: context,
        state: state,
        child: child,
      );
    };
