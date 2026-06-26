import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class NotificacionesPage extends StatelessWidget {
  final List<Map<String, String>> notificaciones = [
    {
      'mensaje': 'Tu pedido #104 ha sido entregado',
      'fecha': '14/07/2025',
    },
    {
      'mensaje': '¡Nueva promoción! 20% en toda la tienda',
      'fecha': '13/07/2025',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // LOGO
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              width: 100,
              height: 100,
              child: Image.asset('assets/logo_shopwave.png'),
            ),

            // TÍTULO
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: const Text(
                'Tus notificaciones',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3F51B5),
                ),
              ),
            ),

            // LISTA DE NOTIFICACIONES
            ...notificaciones.map((noti) {
              return Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      noti['mensaje']!,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Fecha: ${noti['fecha']}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF666666),
                      ),
                    ),
                  ],
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
