import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lock/theme/custom_button_style.dart';
import 'package:lock/widgets/custom_elevated_button.dart';

class AddLockerScreen extends StatefulWidget {
  @override
  _AddLockerScreenState createState() => _AddLockerScreenState();
}

class _AddLockerScreenState extends State<AddLockerScreen> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _tipoController = TextEditingController();

  void _addLocker() {
    final String id = _idController.text.trim();
    final String title = _titleController.text.trim();
    final String tipo = _tipoController.text.trim();

    if (id.isNotEmpty && title.isNotEmpty && tipo.isNotEmpty) {
      FirebaseFirestore.instance.collection('Lockers').doc(id).set({
        'title': title,
        'tipo': tipo,
        'ocupado': false,
      }).then((_) {
        // Mostrar snackbar de éxito
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Locker creado exitosamente')),
        );

        // Limpiar los campos de texto
        _idController.clear();
        _titleController.clear();
        _tipoController.clear();

        // Navegar a la pantalla de disponibilidad
        Navigator.pushNamed(context, '/availability'); // Ajusta la ruta según sea necesario
      }).catchError((error) {
        // Mostrar snackbar de error
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error al crear el locker')),
        );
      });
    } else {
      // Mostrar snackbar para campos vacíos
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, completa todos los campos')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _idController,
              decoration: InputDecoration(
                labelText: 'ID del Locker',
                labelStyle: TextStyle(color: Colors.white70, fontFamily: 'Roboto'),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              style: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'Título del Locker',
                labelStyle: TextStyle(color: Colors.white70, fontFamily: 'Roboto'),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              style: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _tipoController,
              decoration: InputDecoration(
                labelText: 'Tipo de Equipo',
                labelStyle: TextStyle(color: Colors.white70, fontFamily: 'Roboto'),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white70),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
              style: TextStyle(color: Colors.white, fontFamily: 'Roboto'),
            ),
            SizedBox(height: 20),
            CustomElevatedButton(
              onPressed: () => _addLocker(),
              height: 70,
              width: 160,
              text: "Agregar",
              buttonStyle: CustomButtonStyles.outlineOnPrimary,
              buttonTextStyle: Theme.of(context).textTheme.bodyLarge!,
            ),
          ],
        ),
      ),
    );
  }
}
