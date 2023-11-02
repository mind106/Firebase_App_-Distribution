// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:get/route_manager.dart';
import 'package:multiple_language/utils/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  late Animation<double> animation;
  late AnimationController _controller;

  GlobalKey<ScaffoldState> _globalKey = GlobalKey();

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..forward();
    animation = CurvedAnimation(parent: _controller, curve: Curves.linear);

    // Delay the execution of the function by 3 seconds
    Future.delayed(
        const Duration(seconds: 3),
        () => Get.offNamed(
              RouteHelper.getLanguageRoute(),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
            scale: animation,
            child: Center(
              child: Image.network(
                "https://images.unsplash.com/photo-1694846119962-491ac7bcc568?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                width: 200,
              ),
            ),
          ),
          Center(
            child: Image.network(
              "https://images.unsplash.com/photo-1563861327975-6078d4994655?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fFRFWFR8ZW58MHwwfDB8fHww&auto=format&fit=crop&w=800&q=60",
              width: 300,
            ),
          ),
        ],
      ),
    );
  }
}
