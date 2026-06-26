import 'package:flutter/material.dart';

class GestionPagosPage extends StatefulWidget {
  const GestionPagosPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GestionPagosPageState createState() => _GestionPagosPageState();
}

class _GestionPagosPageState extends State<GestionPagosPage> {
  String metodoSeleccionado = 'Tarjeta';
  final TextEditingController tarjetaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // LOGO
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              width: 100,
              height: 100,
              child: Image.asset('assets/logo_shopwave.png'),
            ),

            // TÍTULO
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: const Text(
                'Gestión de pagos',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF3F51B5),
                ),
              ),
            ),

            // TARJETA DE PAGO
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 3)],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // TOTAL A PAGAR
                  const Text(
                    'Total a pagar: \$99.800',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3F51B5),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // MÉTODO DE PAGO
                  const Text(
                    'Selecciona un método de pago:',
                    style: TextStyle(fontSize: 14, color: Color(0xFF333333)),
                  ),
                  const SizedBox(height: 8),
                  Column(
                    children: [
                      RadioListTile<String>(
                        title: const Text('Tarjeta de crédito/débito'),
                        value: 'Tarjeta',
                        // ignore: deprecated_member_use
                        groupValue: metodoSeleccionado,
                        // ignore: deprecated_member_use
                        onChanged: (value) {
                          setState(() {
                            metodoSeleccionado = value!;
                          });
                        },
                      ),
                      RadioListTile<String>(
                        title: const Text('Pago contraentrega'),
                        value: 'Contraentrega',
                        // ignore: deprecated_member_use
                        groupValue: metodoSeleccionado,
                        // ignore: deprecated_member_use
                        onChanged: (value) {
                          setState(() {
                            metodoSeleccionado = value!;
                          });
                        },
                      ),
                    ],
                  ),

                  // CAMPO DE TARJETA (solo si aplica)
                  if (metodoSeleccionado == 'Tarjeta') ...[
                    const Text(
                      'Número de tarjeta',
                      style: TextStyle(fontSize: 14, color: Color(0xFF333333)),
                    ),
                    TextField(
                      controller: tarjetaController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'XXXX-XXXX-XXXX-XXXX',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFF3F51B5)),
                        ),
                      ),
                      style: const TextStyle(color: Colors.black),
                    ),
                    const SizedBox(height: 16),
                  ],
                ],
              ),
            ),

            // BOTÓN CONFIRMAR PAGO
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // Acción al confirmar pago
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4CAF50),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 16),
                ),
                child: const Text('Confirmar pago'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
