import 'package:crudeapp/productList.dart';
import 'package:flutter/material.dart';

class crude extends StatelessWidget {
  const crude({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              elevation: 0,
              fixedSize: const Size.fromWidth(double.maxFinite),
              backgroundColor: Color.fromARGB(255, 132, 41, 243),
              foregroundColor: Colors.white),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromARGB(255, 183, 124, 255),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 207, 172, 250),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(255, 132, 41, 243),
        ),
        iconButtonTheme: const IconButtonThemeData(
          style: ButtonStyle(
            //backgroundColor: MaterialStatePropertyAll(Colors.black),
            // foregroundColor: MaterialStatePropertyAll(Colors.black),
            iconColor: MaterialStatePropertyAll(Colors.white),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Color.fromARGB(255, 110, 13, 127))),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 39, 7, 66),
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 255, 0, 0),
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 255, 0, 0),
            ),
          ),
        ),
      ),
      title: 'CrudeApp',
      home: const productList(),
    );
  }
}
