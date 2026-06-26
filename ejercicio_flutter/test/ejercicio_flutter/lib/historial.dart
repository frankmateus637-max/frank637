import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class HistorialPedidosPage extends StatelessWidget {
  final List<Map<String, dynamic>> pedidos = [
    {
      'fecha': '01/07/2025',
      'detalle': '2 productos - \$89.000',
      'estado': 'Entregado',
      'color': Color(0xFF4CAF50),
    },
    {
      'fecha': '28/06/2025',
      'detalle': '1 producto - \$45.000',
      'estado': 'En proceso',
      'color': Color(0xFFFFA000),
    },
    {
      'fecha': '20/06/2025',
      'detalle': '4 productos - \$220.000',
      'estado': 'Cancelado',
      'color': Color(0xFFF44336),
    },
  ];

  Widget _buildTarjetaPedido(Map<String, dynamic> pedido) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 3)],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fecha: ${pedido['fecha']}',
            style: const TextStyle(fontSize: 14, color: Color(0xFF555555)),
          ),
          const SizedBox(height: 4),
          Text(
            'Pedido: ${pedido['detalle']}',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Estado: ${pedido['estado']}',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: pedido['color'],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF2F2F2),
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
                'Historial de pedidos',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3F51B5),
                ),
              ),
            ),

            // TARJETAS DE PEDIDOS
            // ignore: unnecessary_to_list_in_spreads
            ...pedidos.map(_buildTarjetaPedido).toList(),
          ],
        ),
      ),
    );
  }
}
