import 'package:flutter/material.dart';

// Importa tus pantallas
import 'carrito_compras.dart';
import 'gestio_pagos.dart';
import 'historial.dart';
import 'notificaciones.dart';
import 'procesamiento_pedidos.dart';

void main() {
  runApp(ShopWaveApp());
}

class ShopWaveApp extends StatelessWidget {
  const ShopWaveApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopWave',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        scaffoldBackgroundColor: const Color(0xFFF2F2F2),
      ),
      initialRoute: '/carrito', // Puedes cambiar la pantalla inicial aquí
      routes: {
        '/carrito': (context) => CarritoComprasPage(),
        '/pagos': (context) => GestionPagosPage(),
        '/usuarios': (context) => GestionUsuariosPage(),
        '/historial': (context) => HistorialPedidosPage(),
        '/notificaciones': (context) => NotificacionesPage(),
        '/procesamiento': (context) => ProcesamientoPedidosPage(),
      },
    );
  }
  
  // ignore: non_constant_identifier_names
  GestionUsuariosPage() {}
}
