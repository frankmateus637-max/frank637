import 'package:flutter/material.dart';

class GestionUsuarioPage extends StatefulWidget {
  const GestionUsuarioPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GestionUsuarioPageState createState() => _GestionUsuarioPageState();
}

class _GestionUsuarioPageState extends State<GestionUsuarioPage> {
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController correoController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  String tipoUsuario = 'Cliente';
  final List<String> tiposUsuario = ['Cliente', 'Administrador', 'Invitado'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // LOGO
            Container(
              margin: EdgeInsets.only(bottom: 12),
              width: 100,
              height: 100,
              child: Image.asset('assets/logo_shopwave.png'),
            ),

            // TÍTULO
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                'Gestión de Usuario',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3F51B5),
                ),
              ),
            ),

            // FORMULARIO
            Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 3)],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // NOMBRE
                  Text(
                    'Nombre completo',
                    style: TextStyle(fontSize: 14, color: Color(0xFF333333)),
                  ),
                  TextField(
                    controller: nombreController,
                    decoration: InputDecoration(
                      hintText: 'Ej: Laura Sánchez',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF3F51B5)),
                      ),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 16),

                  // CORREO
                  Text(
                    'Correo electrónico',
                    style: TextStyle(fontSize: 14, color: Color(0xFF333333)),
                  ),
                  TextField(
                    controller: correoController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Ej: laura@email.com',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF3F51B5)),
                      ),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 16),

                  // CONTRASEÑA
                  Text(
                    'Contraseña',
                    style: TextStyle(fontSize: 14, color: Color(0xFF333333)),
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Mínimo 6 caracteres',
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF3F51B5)),
                      ),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 16),

                  // TIPO DE USUARIO
                  Text(
                    'Tipo de usuario',
                    style: TextStyle(fontSize: 14, color: Color(0xFF333333)),
                  ),
                  DropdownButton<String>(
                    value: tipoUsuario,
                    isExpanded: true,
                    items: tiposUsuario.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      setState(() {
                        tipoUsuario = newValue!;
                      });
                    },
                  ),
                ],
              ),
            ),

            // BOTÓN GUARDAR
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Acción al guardar
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4CAF50),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 16),
                ),
                child: Text('Guardar usuario'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
