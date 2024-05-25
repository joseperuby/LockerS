class UsuarioModel {
  final String? id;
  final String nombreCompleto;
  final String email;
  final String expediente;
  final String role;
  final String contrasena;
  final String telefono;

  const UsuarioModel({
    this.id,
    required this.nombreCompleto,
    required this.email,
    required this.expediente,
    required this.contrasena,
    required this.telefono,
    this.role = "alumno",
  });

  toJson(){
    return {
      "nombreCompleto": nombreCompleto,
      "email": email,
      "expediente": expediente,
      "role": role,
      "contrasena": contrasena,
      "telefono": telefono,
    };
  }
}
