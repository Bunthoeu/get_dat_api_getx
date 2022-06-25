import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shimmer_effect_flutter_getx/res/strings.dart';
import 'package:shimmer_effect_flutter_getx/sampledatamodule/views/SampleDataListView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: flutterShimmerEffectWithGetx,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  SampleDataListView(),
    );
  }
}


