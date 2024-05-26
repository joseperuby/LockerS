import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:lock/src/constants/image_strings.dart';
import 'package:lock/src/features/authentication/controllers/signup_controller.dart';

class PerfilScreen extends StatelessWidget {
  final SignUpController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    final userId = controller.currentUser?.uid ?? '';

    return Scaffold(
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('Usuarios')
            .doc(userId)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || !snapshot.data!.exists) {
            return Center(child: Text('No data available'));
          }
          var data = snapshot.data!.data() as Map<String, dynamic>;
          String nombreCompleto = data['nombreCompleto'] ?? 'N/A';
          String correo = data['email'] ?? 'N/A';
          String expediente = data['expediente'] ?? 'N/A';
          String telefono = data['telefono'] ?? 'N/A';

          return Container(
            padding: const EdgeInsets.all(16.0),
            color: const Color(0xFF48484C),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 150,  // Ajusta este valor para cambiar el ancho
                        height: 150, // Ajusta este valor para cambiar la altura
                        child: Image(
                          image: AssetImage(tUsuario),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        nombreCompleto,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontFamily: 'Roboto',
                        ),
                      ),
                      SizedBox(height: 10),
                      _buildInfoCard('Expediente', expediente),
                      SizedBox(height: 10),
                      _buildInfoCard('Correo', correo),
                      SizedBox(height: 10),
                      _buildInfoCard('Telefono', telefono),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildInfoCard(String title, String info) {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '$title: $info',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
