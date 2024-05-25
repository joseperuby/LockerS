import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lock/src/features/authentication/controllers/signup_controller.dart';

class MainScreen extends StatelessWidget {
  final controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      appBar: AppBar(
        backgroundColor: const Color(0xFF24272C),
        title: Text(
          'Tus lockers',
          style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontFamily: 'Roboto',
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person, size: 35.0, color: Colors.white),
            onPressed: () {
              controller.logOut();
            },
          ),
        ],
      ),
      backgroundColor: const Color(0xFF48484C),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              color: const Color(0xFF24272C),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/usuario.png',
                        width: 50.0,
                        height: 50.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: () async {
                      // Acción al hacer clic en el botón
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF48484C),
                      shape: CircleBorder(),
                      padding: const EdgeInsets.all(12),
                    ),
                    child: Text(
                      '+',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: StreamBuilder<DocumentSnapshot>(
                stream: FirebaseFirestore.instance.collection('Usuarios').doc('1L').snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (snapshot.hasError) {
                    return Center(child: Text('Error: ${snapshot.error}'));
                  }
                  if (!snapshot.hasData || !snapshot.data!.exists) {
                    return Center(child: Text('Locker no encontrado'));
                  }

                  var data = snapshot.data!.data() as Map<String, dynamic>;
                  bool ocupado = data['ocupado'] ?? false;

                  return LockerItem('Locker #1', ocupado);
                },
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF24272C),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 35.0),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 35.0),
            label: 'Settings',
          ),
        ],
        onTap: (index) {
          // Manejar la navegación de la barra inferior
        },
      ),
    );
  }
}

class LockerItem extends StatelessWidget {
  final String title;
  final bool ocupado;

  LockerItem(this.title, this.ocupado);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      decoration: BoxDecoration(
        color: const Color(0xFF24272C),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        leading: Icon(Icons.lock, color: Colors.white, size: 40.0),
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto',
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        trailing: Icon(
          ocupado ? Icons.cancel : Icons.check_circle,
          color: ocupado ? Colors.red : Colors.green,
          size: 40.0,
        ),
      ),
    );
  }
}
