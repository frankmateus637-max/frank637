import 'package:flutter/material.dart';

class ProcesamientoPedidosPage extends StatelessWidget {
  const ProcesamientoPedidosPage({super.key});

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
                'Procesamiento de pedidos',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3F51B5),
                ),
              ),
            ),

            // TARJETA DE PEDIDO
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
                  // Número de pedido
                  Text(
                    'Pedido #1245',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 6),

                  // Fecha
                  Text(
                    'Fecha: 14/07/2025',
                    style: TextStyle(fontSize: 14, color: Color(0xFF555555)),
                  ),
                  SizedBox(height: 4),

                  // Estado
                  Text(
                    'Estado: Enviado',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFF9800),
                    ),
                  ),
                  SizedBox(height: 8),

                  // Total pagado
                  Text(
                    'Total pagado: \$99.800',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3F51B5),
                    ),
                  ),
                  SizedBox(height: 16),

                  // BOTONES
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Acción: Marcar recibido
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF4CAF50),
                            foregroundColor: Colors.white,
                          ),
                          child: Text('Marcar recibido'),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Acción: Cancelar pedido
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF44336),
                            foregroundColor: Colors.white,
                          ),
                          child: Text('Cancelar pedido'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
