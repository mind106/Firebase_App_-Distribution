import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:multiple_language/controllers/language_controller.dart';
import 'package:multiple_language/screens/language_widget.dart';
import 'package:multiple_language/screens/scan_screen.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GetBuilder<LocalizationController>(
            builder: (localizationController) {
          return Column(
            children: [
              Expanded(
                child: Center(
                  child: Scrollbar(
                      child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(5),
                    child: Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Image.network(
                                "https://images.unsplash.com/photo-1694846119962-491ac7bcc568?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyOXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
                                width: 150,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                              child: Text('select-language'.tr),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 1,
                              ),
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 3,
                              itemBuilder: (context, index) => LanguageWidget(
                                localizationController: localizationController,
                                languageModel:
                                    localizationController.languages[index],
                                index: index,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text('you_can_change_language'.tr),
                            Text('back_to_home'.tr),
                            Text('select-language'.tr),
                            Text('region'.tr),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            ScanCardScreen()));
                              },
                              child: Text("Scan Screen"),
                            )
                          ],
                        ),
                      ),
                    ),
                  )),
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
