import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quizz/page/bienvenue_page.dart';
import 'package:quizz/page/inscription_page.dart';


final _router = GoRouter(routes: [
  GoRoute(path: "/", builder: (_, __) => BienvenuePage(), routes: [
    GoRoute(path: "inscription", builder: (_, __) => InscriptionPage()),
    //GoRoute(path: "paiement", builder: (_, __) => PaiementPage()),
    //GoRoute(path: "aboutus", builder: (_, __) => AboutUsPage()),
    //GoRoute(path: "detail",
        //builder: (_, state) => DetailPage(article: state.extra as Article)),
  ])
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
