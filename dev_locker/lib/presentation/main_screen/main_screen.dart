import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:lock/presentation/perfil_screen/perfil.dart';
import 'package:lock/src/constants/image_strings.dart';
import 'package:lock/src/features/authentication/controllers/signup_controller.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final controller = Get.put(SignUpController());
  int _selectedIndex = 0; // El índice del ítem seleccionado (1 para "Lockers")

  // Lista de pantallas para navegar
  final List<Widget> _pages = [
    LockersScreen(),
    PerfilScreen(),
  ];

  // Lista de títulos correspondientes a cada pantalla
  final List<String> _titles = [
    'Mis prestamos',
    'Disponibles',
    'Perfil',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color(0xFF24272C),
        title: Text(
          _titles[_selectedIndex], // Título dinámico basado en el índice seleccionado
          style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontFamily: 'Roboto',
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout, size: 35.0, color: Colors.white),
            onPressed: () {
              controller.logOut();
            },
          ),
        ],
      ),
      backgroundColor: const Color(0xFF48484C),
      body: _pages[_selectedIndex], // Mostrar la pantalla seleccionada
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF24272C),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        currentIndex: _selectedIndex, // Establece el índice actual
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 35.0),
            label: 'Lockers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin, size: 35.0),
            label: 'Perfil',
          ),
        ],
        onTap: _onItemTapped, // Manejar la navegación de la barra inferior
      ),
    );
  }
}

// Pantalla de Lockers
class LockersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('Lockers').snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }
                if (!snapshot.hasData) {
                  return Text('No data available');
                }
                var lockers = snapshot.data!.docs;
                return ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: lockers.length,
                  itemBuilder: (context, index) {
                    var locker = lockers[index];
                    return LockerItem(
                      locker['title'],
                      locker['tipo'],
                      locker.id,
                    );
                  },
                );
              },
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class LockerItem extends StatelessWidget {
  final String title;
  final String tipo;
  final String lockerId;

  LockerItem(this.title, this.tipo, this.lockerId);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.only(top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: const Color(0xFF24272C),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('Lockers')
            .doc(lockerId)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData || !snapshot.data!.exists) {
            return Text('No data available');
          }
          var data = snapshot.data!.data() as Map<String, dynamic>;
          bool ocupado = data['ocupado'] ?? false;
          return ListTile(
            leading: Image(
              image: AssetImage(tCasillero),
            ),
            title: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Roboto',
                fontSize: 22.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            subtitle: Text(
              tipo,
              style: TextStyle(
                color: Colors.white70,
                fontFamily: 'Roboto',
                fontSize: 16.0,
              ),
            ),
            trailing: Icon(
              ocupado ? Icons.cancel : Icons.check_circle,
              color: ocupado ? Colors.red : Colors.green,
              size: 30.0,
            ),
          );
        },
      ),
    );
  }
}
