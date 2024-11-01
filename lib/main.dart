import 'package:e_comm/screens/cart_screen.dart';
import 'package:e_comm/screens/home_screen.dart';
import 'package:e_comm/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<void> main()
async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(


        initialRoute: MainScreen.id,
        routes: {
          MainScreen.id:(context)=>const MainScreen(),
          HomeScreen.id:(context)=>const HomeScreen(),
          CartScreen.id:(context)=> const CartScreen()

        },

    );
  }
}
