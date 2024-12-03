import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_managment/Login/auth_provider.dart';
import 'package:provider_state_managment/Login/login.dart';
import 'package:provider_state_managment/MenullyStateManagment/home.dart';
import 'package:provider_state_managment/Provider/home_provider.dart';
import 'package:provider_state_managment/Provider/list_provider.dart';
import 'package:provider_state_managment/SliderExample/slider.dart';
import 'package:provider_state_managment/SliderExample/slider_provider.dart';
import 'package:provider_state_managment/ValueNoitifyListener/notify_listener.dart';
import 'package:provider_state_managment/favorate_screen/favorate.dart';
import 'package:provider_state_managment/favorate_screen/favorite_provider.dart';
import 'package:provider_state_managment/theme/dark_theme.dart';
import 'package:provider_state_managment/theme/dark_theme_provider.dart';
//manually setstate

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   // final themeChanger=Provider.of<DarkThemeProvider>(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>NumberListProvider()),
        ChangeNotifierProvider(create: (context)=>SliderProvider()),
        ChangeNotifierProvider(create: (context)=>FavoriteProvider()),
        ChangeNotifierProvider(create: (context)=>DarkThemeProvider()),
        ChangeNotifierProvider(create: (context)=>Authprovider()),
      ],
      child: Builder(
          builder: (BuildContext context){
        final themeChanger=Provider.of<DarkThemeProvider>(context);
        return MaterialApp(
          themeMode:themeChanger.themeMode,
          theme: ThemeData(
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.blue
            ),iconTheme: IconThemeData(color: Colors.green),
              brightness: Brightness.light,
              primarySwatch: Colors.blue),
          darkTheme: ThemeData(
            appBarTheme: AppBarTheme(
              backgroundColor: Colors.teal
            ),
            brightness: Brightness.dark
          ),

          home: Login(),
        );

      })
    );
  }
}
