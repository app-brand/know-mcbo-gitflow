import 'dart:convert';
import 'package:know_my_city/domain/axi.dart';
import 'package:know_my_city/presentation/widgets/axis_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

class AxisList extends StatefulWidget {
  const AxisList({super.key});

  @override
  _AxisListState createState() => _AxisListState();
}

class _AxisListState extends State<AxisList> {
  //int currentIndex = 0;
  List<Axi> axiList = [];
  //final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    if (mounted) {
      _loadData();
    }
  }

  Future<void> _loadData() async {
    final String response =
        await rootBundle.loadString('assets/json/axis.json');
    try {
      final List<dynamic> AxiJsonList = json.decode(response);
      setState(() {
        axiList = AxiJsonList.map((json) => Axi.fromJson(json)).toList();
        if (axiList.isNotEmpty) {
          print(axiList);
        }
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

        return Container(
          height: (900 / 1512) * width,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: (30 / 1512) * (width),
                ),
                Expanded(
                  child: axiList.isEmpty
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          //controller: _scrollController,
                          scrollDirection: Axis.horizontal,
                          itemCount: axiList.length,
                          itemBuilder: (context, index) {
                            return AxisCard(
                              axi: axiList[index],
                              width: width,
                            );
                          }),
                ),
                SizedBox(
                  width: (30 / 1512) * (width),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
