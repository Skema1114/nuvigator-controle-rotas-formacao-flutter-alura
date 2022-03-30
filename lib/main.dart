import 'package:flutter/material.dart';
import 'package:nuvigator/next.dart';
import 'package:proj/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      home: Nuvigator(
        router: MyRouter(),
      ),
      /*
        FORMA 'INLINE' DE REFERENCIAR AS ROTAS (NÃO É DINAMICO)
        home: MaterialApp(
        title: 'Nuvigator App',
        builder: Nuvigator.routes(
          screenType: materialScreenType,
          initialRoute: 'home',
          routes: [
            NuRouteBuilder(
              path: 'home',
              builder: (_, __, ___) => HomeScreen(),
            ),
            NuRouteBuilder(
              path: 'login',
              builder: (_, __, ___) => LoginScreen(),
            ),
            NuRouteBuilder(
              path: 'sing-up',
              builder: (_, __, ___) => SingupScreen(),
            ),
            NuRouteBuilder(
              path: 'favorites',
              builder: (_, __, ___) => FavoritesScreen(),
            ),
            NuRouteBuilder(
              path: 'profile',
              builder: (_, __, ___) => ProfileScreen(),
            ),
            NuRouteBuilder(
              path: 'payment',
              builder: (_, __, ___) => PaymentScreen(),
            ),
            NuRouteBuilder(
              path: 'producer-details',
              builder: (_, __, NuRouteSettings args) {
                final Producer producer = args.rawParameters['producer'];
                return ProducerDetailsScreen(producer: producer);
              },
            ),
            NuRouteBuilder(
              path: 'package-details',
              builder: (_, __, NuRouteSettings args) {
                final Package package = args.rawParameters['package'];
                final Producer producer = args.rawParameters['producer'];
                return PackageDetailsScreen(
                  package: package,
                  producer: producer,
                );
              },
            ),
          ],
        ),
      ), 
      */
    );
  }
}
