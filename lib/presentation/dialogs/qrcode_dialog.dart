import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class QRCodeGenerator extends StatefulWidget {
  final String ruta;

  const QRCodeGenerator({super.key, required this.ruta});

  @override
  State<QRCodeGenerator> createState() => _QRCodeGeneratorState();
}

class _QRCodeGeneratorState extends State<QRCodeGenerator> {
  String? _qrCodeData;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SingleChildScrollView(  
        child: Container(
          /* constraints: const BoxConstraints(
            maxWidth: 300,
            maxHeight: 350,
          ), */          
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 16,),
              Text('Presione el botón para imprimir su Ticket para la ${widget.ruta}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ), 
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _qrCodeData = 'https://www.alcaldiademaracaibo.org'; /* ${widget.ruta} */
                  }); 
                  IconButton(
                    onPressed: () {
                      print('Imprimir Ticket');
                    },
                    icon: const Icon(Icons.print),                  
                  );              
                }, 
                icon: const Icon(Icons.qr_code),
                ),
              const SizedBox(height: 16,),
              if (_qrCodeData != null)    
                Column(
                  children: [
                    SizedBox(
                      width: 200,
                      height: 200,
                      child: PrettyQrView.data(
                        data: _qrCodeData!,
                        /* decoration: const PrettyQrDecoration(
                          image: PrettyQrDecorationImage(
                            image: AssetImage('assets/tranvia.png'),
                          ),
                        ), */
                    ),   
                  ),
                  const SizedBox(height: 16,),
                  IconButton(
                    onPressed: () {                      
                      showDialog(
                        context: context,
                        builder: (context) => _buildTicketSavedDialog(widget.ruta),
                      );
                    },
                    icon: const Icon(Icons.print),
                  )
                  ]                
                )                                                    
            ],
          ),
        ),
      ),
    );
  }

  AlertDialog _buildTicketSavedDialog(String ruta) {
    return AlertDialog(
      title: const Text('Ticket'),
      content: Text('Se guardó su ticket para la $ruta satisfactoriamente.'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.of(context).pop();
          },
          child: const Text('Cerrar'),
        ),
      ],
    );
  }
}
