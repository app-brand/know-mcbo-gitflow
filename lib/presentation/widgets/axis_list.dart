import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:know_my_city/domain/axi.dart';
import 'package:know_my_city/presentation/widgets/axis_card.dart';
import 'package:flutter/services.dart' show rootBundle;

class AxisList extends StatefulWidget {
  const AxisList({super.key});

  @override
  _AxisListState createState() => _AxisListState();
}

class _AxisListState extends State<AxisList> {
  List<Axi> axiList = [];

  @override
  void initState() {
    super.initState();
    if (mounted) {
      _loadData();
    }
  }

  Future<void> _loadData() async {
    final String response = await rootBundle.loadString('assets/json/axis.json');
    try {
      final List<dynamic> AxiJsonList = json.decode(response);
      setState(() {
        axiList = AxiJsonList.map((json) => Axi.fromJson(json)).toList();
      });
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        var width = constraints.maxWidth;

        return SingleChildScrollView(
          child: Column(
            children: [
              // Título con fondo gradiente llamativo
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 24.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.green.shade600, Colors.green.shade900],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'IDIOSINCRASIA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36, // Título grande
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 5,
                          color: Colors.black38, // Sombra suave
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Lista de tarjetas
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
                child: axiList.isEmpty
                    ? const Center(child: CircularProgressIndicator())
                    : Wrap(
                        spacing: 20,
                        runSpacing: 20,
                        alignment: WrapAlignment.center,
                        children: axiList.map((axi) {
                          return AxisCard(axi: axi, width: width);
                        }).toList(),
                      ),
              ),
            ],
          ),
        );
      },
    );
  }
}
