import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_managment/MenullyStateManagment/home.dart';
import 'package:provider_state_managment/Provider/home_provider.dart';
import 'package:provider_state_managment/Provider/list_provider.dart';
import 'package:provider_state_managment/SliderExample/slider.dart';
import 'package:provider_state_managment/SliderExample/slider_provider.dart';
//manually setstate

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>NumberListProvider()),
        ChangeNotifierProvider(create: (context)=>SliderProvider())
      ],
      child: MaterialApp(
         home: SliderExample(),
      ),
    );
  }
}
