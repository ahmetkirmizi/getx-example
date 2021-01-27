import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controller/count.dart';
import 'package:getx_example/message.dart';
import 'package:getx_example/other_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(),
        debugShowCheckedModeBanner: false,
        translations: Messages(), // your translations
        locale:
            Locale('en', 'US'), // translations will be displayed in that locale
        fallbackLocale: Locale('tr',
            'TR') // specify the fallback locale in case an invalid locale is selected.

        );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  Counter counter = Get.put(Counter());
  final Counter c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text('count'.tr + ": Obx"),
            Obx(() => Text(counter.count.toString())),
            Text('count'.tr + ": find"),
            Obx(() => Text(c.count.toString())),
            RaisedButton(
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              child: Text("Change Theme"),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            foregroundColor: Get.isDarkMode ? Colors.accents : Colors.amber,
            heroTag: "1",
            onPressed: () {
              counter.incrament();
            },
            child: Icon(
              Icons.plus_one,
            ),
          ),
          SizedBox(height: 5),
          FloatingActionButton(
            foregroundColor: Get.isDarkMode ? Colors.accents : Colors.amber,
            heroTag: "2",
            onPressed: () {
              counter.decrament();
            },
            child: Icon(
              Icons.remove,
            ),
          ),
          SizedBox(height: 5),
          FloatingActionButton(
            foregroundColor: Get.isDarkMode ? Colors.accents : Colors.amber,
            heroTag: "3",
            onPressed: () {
              Get.to(OtherPage());
            },
            child: Icon(
              Icons.arrow_right,
            ),
          ),
          SizedBox(height: 5),
          FloatingActionButton(
            foregroundColor: Get.isDarkMode ? Colors.accents : Colors.amber,
            heroTag: "4",
            onPressed: () {
              Get.locale == Locale('en', 'US')
                  ? Get.updateLocale(Locale('tr', 'TR'))
                  : Get.updateLocale(Locale('en', 'US'));
            },
            child: Icon(
              Icons.language,
            ),
          ),
        ],
      ),
    );
  }
}
