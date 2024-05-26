import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:lock/presentation/add_lockers_screen/add_lockers_screen.dart';
import 'package:lock/src/constants/image_strings.dart';
import 'package:lock/src/features/authentication/controllers/signup_controller.dart';

class MainScreenAdmin extends StatefulWidget {
  @override
  _MainScreenAdminState createState() => _MainScreenAdminState();
}

class _MainScreenAdminState extends State<MainScreenAdmin> {
  final controller = Get.put(SignUpController());
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    AdminLockersScreen(),
    AddLockerScreen(),
  ];

  final List<String> _titles = [
    'Lockers',
    'Disponibilidad',
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
          _titles[_selectedIndex],
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
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF24272C),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 35.0),
            label: 'Lockers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box, size: 35.0),
            label: 'Disponibilidad',
          ),
        ],
        onTap: _onItemTapped,
      ),
    );
  }
}

class AdminLockersScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                LockerItemAdmin('Locker #1', 'Volleyball', '1L'),
                LockerItemAdmin('Locker #2', 'Basketball', '2L'),
                LockerItemAdmin('Locker #3', 'Fútbol', '3L'),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class LockerItemAdmin extends StatelessWidget {
  final String title;
  final String subtitle;
  final String lockerId;

  LockerItemAdmin(this.title, this.subtitle, this.lockerId);

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
          String? expediente = data['expediente'];

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
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.white70,
                    fontFamily: 'Roboto',
                    fontSize: 16.0,
                  ),
                ),
                if (ocupado && expediente != null)
                  Text(
                    'Ocupado por: $expediente',
                    style: TextStyle(
                      color: Colors.red,
                      fontFamily: 'Roboto',
                      fontSize: 16.0,
                    ),
                  ),
              ],
            ),
            trailing: Icon(
              ocupado ? Icons.clear : Icons.check_circle,
              color: ocupado ? Colors.red : Colors.green,
              size: 30.0,
            ),
          );
        },
      ),
    );
  }
}
