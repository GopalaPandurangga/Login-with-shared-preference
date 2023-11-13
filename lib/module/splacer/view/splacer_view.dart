import 'package:flutter/material.dart';
import 'package:slicing_ui2_login/core.dart';
import '../controller/splacer_controller.dart';

class SplacerView extends StatefulWidget {
  const SplacerView({Key? key}) : super(key: key);

  Widget build(context, SplacerController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Column(
                children: [
                  Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Colors.cyan, Colors.blue],
                        stops: [0.0, 1.0],
                      ),
                      borderRadius: BorderRadius.circular(36.0),
                    ),
                    child: Image.asset(
                      "assets/images/study 2.png",
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const SizedBox(
                    height: 100.0,
                  ),
                  const Text(
                    "Discover our\nDream job here ",
                    style: TextStyle(
                        fontSize: 28.0, height: 1, fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  const Text(
                    "Explore all the most exiting jobs roles\nbased on your interest and study major",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              )),
              Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20),
                child: Stack(
                  children: [
                    Container(
                      height: 64,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.grey.withAlpha(20),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 160.0,
                          ),
                          InkWell(
                            onTap: () {
                              Get.to(const LoginView());
                            },
                            child: const Text(
                              "Sign in",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 64,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SplacerView> createState() => SplacerController();
}
