import 'package:flutter/material.dart';
import 'package:know_my_city/presentation/core/app_theme.dart';
import 'package:know_my_city/domain/axi/axi.dart';

class AxisCard extends StatefulWidget {
  final Axi axi;
  final double width;

  const AxisCard({
    super.key,
    required this.axi,
    required this.width,
  });

  @override
  _AxisCardState createState() => _AxisCardState();
}

class _AxisCardState extends State<AxisCard> {
  bool isHovering = false; // Controla el estado de hover

  @override
  Widget build(BuildContext context) {
    // Definimos el tamaño fijo de las tarjetas y ajustamos la altura
    double cardWidth = widget.width < 600
        ? widget.width * 0.9
        : 300; // Ancho fijo para pantallas grandes y pequeñas
    double cardHeight = widget.width < 600
        ? 500
        : 550; // Altura más larga para que el contenido se vea bien

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: MouseRegion(
        onEnter: (_) => setState(() => isHovering = true),
        onExit: (_) => setState(() => isHovering = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: cardWidth, // Ancho fijo de la tarjeta
          height: cardHeight, // Altura fija de la tarjeta aumentada
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: isHovering ? Colors.green : Colors.grey.shade300,
              width: 3,
            ),
            boxShadow: [
              BoxShadow(
                color: isHovering
                    ? Colors.green.withOpacity(0.5)
                    : Colors.grey.withOpacity(0.3),
                blurRadius: 15,
                spreadRadius: 5,
                offset: const Offset(0, 8),
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Imagen de la tarjeta
              ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(20)),
                child: Image.asset(
                  widget.axi.axis_image_url,
                  width: double.infinity,
                  height: 220, // Altura mayor para la imagen
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Título de la tarjeta
                    Text(
                      widget.axi.title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppTheme.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize:
                            widget.width < 600 ? 18 : 22, // Tamaño responsivo
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Nombre del eje (axis)
                    Text(
                      widget.axi.axis_name,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppTheme.greentColorNoOpacity,
                        fontWeight: FontWeight.bold,
                        fontSize: widget.width < 600 ? 16 : 20,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Descripción de la tarjeta
                    Text(
                      widget.axi.axis_description,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: widget.width < 600 ? 14 : 16,
                        height: 1.5,
                      ),
                      maxLines:
                          5, // Permitimos hasta 5 líneas para mayor contenido
                      overflow: TextOverflow
                          .ellipsis, // Puntos suspensivos si el texto es largo
                    ),
                    const SizedBox(height: 12),
                    // Botón "Ver más"
                    ElevatedButton(
                      onPressed: () {
                        print('Botón Ver más presionado');
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12, horizontal: 24),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        backgroundColor: AppTheme.greentColorNoOpacity,
                        shadowColor: Colors.green.withOpacity(0.3),
                        elevation: 5,
                      ),
                      child: const Text(
                        'Ver más',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
