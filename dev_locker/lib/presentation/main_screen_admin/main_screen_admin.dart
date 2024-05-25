import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lock/src/features/authentication/controllers/signup_controller.dart';
class MainScreenAdmin extends StatelessWidget {
  final controller = Get.put(SignUpController());
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Welcome', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller.logOut();
              },
              child: Text('Log Out'),
            ),
          ],
        ),
      ),
    );
  }
}
