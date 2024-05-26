import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddLockerScreen extends StatefulWidget {
  @override
  _AddLockerScreenState createState() => _AddLockerScreenState();
}

class _AddLockerScreenState extends State<AddLockerScreen> {
  final TextEditingController lockerIdController = TextEditingController();
  final TextEditingController typeController = TextEditingController();

  final CollectionReference lockersCollection =
      FirebaseFirestore.instance.collection('Lockers');

  void _addLocker() async {
    String lockerId = lockerIdController.text.trim();
    String type = typeController.text.trim();

    if (lockerId.isNotEmpty && type.isNotEmpty) {
      await lockersCollection.doc(lockerId).set({
        'ocupado': false,
        'tipo': type,
        'expediente': null,
      });

      Get.snackbar(
        'Locker agregado',
        'El locker $lockerId ha sido agregado exitosamente.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

      lockerIdController.clear();
      typeController.clear();
    } else {
      Get.snackbar(
        'Error',
        'Por favor, llene todos los campos.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: lockerIdController,
            decoration: InputDecoration(
              labelText: 'Locker ID',
              labelStyle: TextStyle(color: Colors.white),
              filled: true,
              fillColor: Colors.grey[800],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20),
          TextField(
            controller: typeController,
            decoration: InputDecoration(
              labelText: 'Tipo',
              labelStyle: TextStyle(color: Colors.white),
              filled: true,
              fillColor: Colors.grey[800],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _addLocker,
            child: Text('Agregar Locker'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.green,
              textStyle: TextStyle(
                fontSize: 18,
                fontFamily: 'Roboto',
              ),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
