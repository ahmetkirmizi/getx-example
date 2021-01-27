import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controller/count.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('count'.tr),
            GetX<Counter>(
              builder: (_controller) => Text(_controller.count.toString()),
            ),
            RaisedButton(
              onPressed: () {
                Get.back();
              },
              child: Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
