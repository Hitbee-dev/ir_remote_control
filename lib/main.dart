import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homepage/homepage.dart';

void main() {
  runApp(const IrRemote());
}

class IrRemote extends StatelessWidget {
  const IrRemote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IR Remote Control',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(
            name: "/",
            page: () => const HomePage(),
            transition: Transition.cupertinoDialog),
      ],
    );
  }
}

