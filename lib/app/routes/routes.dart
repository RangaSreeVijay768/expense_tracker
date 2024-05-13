import 'package:basic/app/expense_tracker/screens/expense_tracker_main_screen/expense_tracker_main_screen.dart';
import 'package:basic/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:path/path.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) {
        return ExpenseTrackerMainScreen();
      }),
  // GoRoute(
  //     path: '/logout',
  //     builder: (context, state) {
  //       return FirebaseAuthentication();
  //     }),
  // GoRoute(
  //     path: '/articles/:id',
  //     builder: (BuildContext context, GoRouterState state) {
  //       String newsId = state.pathParameters['id']!;
  //
  //       return ArticlesGetArticleDetails(newsId: newsId);
  //     } // Get
  //     ),
]);
