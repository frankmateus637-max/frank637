import 'package:flutter/material.dart';

class CarritoComprasPage extends StatelessWidget {
  const CarritoComprasPage({super.key});

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
              child: Image.asset('assets/logo_shopwave.png', fit: BoxFit.contain),
            ),

            // TÍTULO
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text(
                'Carrito de compras',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3F51B5),
                ),
              ),
            ),

            // PRODUCTO
            Container(
              margin: EdgeInsets.only(bottom: 16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 2)],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Producto: Camiseta blanca',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Cantidad: 2',
                    style: TextStyle(fontSize: 14, color: Color(0xFF555555)),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Precio unitario: \$49.900',
                    style: TextStyle(fontSize: 14, color: Color(0xFF555555)),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Subtotal: \$99.800',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFE53935),
                    ),
                  ),
                ],
              ),
            ),

            // TOTAL
            Container(
              margin: EdgeInsets.only(bottom: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total a pagar:',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                    ),
                  ),
                  Text(
                    '\$99.800',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3F51B5),
                    ),
                  ),
                ],
              ),
            ),

            // BOTÓN COMPRAR
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Acción al presionar
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4CAF50),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 16),
                ),
                child: Text('Finalizar compra'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
