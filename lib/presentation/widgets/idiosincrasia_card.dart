import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IdiosincrasiaCard extends StatefulWidget {
  final String imagePath;
  final String title;
  final String description;

  const IdiosincrasiaCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
  }); 

  @override
  _IdiosincrasiaCardState createState() => _IdiosincrasiaCardState();
}

class _IdiosincrasiaCardState extends State<IdiosincrasiaCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Stack(
            children: [
              AnimatedScale(
                scale: _isHovered ? 1.02 : 1.0,
                duration: Duration(milliseconds: 300),
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [Colors.black.withOpacity(0.8), Colors.transparent],
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        widget.description,
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}