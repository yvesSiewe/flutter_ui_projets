
import 'package:clonedriblleapp/pages/add_money_page.dart';
import 'package:clonedriblleapp/pages/initial_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: (settings) => RouteGenerator.generateRoute(settings),
    );
  }
}

class RouteGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/':
        return MaterialPageRoute(builder: (context){
          return const InitialPage();
        });
      case '/addmoney':
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondryAnimation)=> const AddMoneyPage(),
          transitionsBuilder: (context, animation, secondryAnimation, child){
            var bigin = Offset(1.0, 0.0);
            var end = Offset.zero;
            var curve = Curves.ease;
            var tween = Tween(begin: bigin, end: end).chain(CurveTween(curve: curve));
            
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          }
        );
      default:
        return MaterialPageRoute(builder: (context){
          return Scaffold(
            body: Center(
              child: Text('Erreur'),
            ),
          );
        }
      );
    }
  }
}